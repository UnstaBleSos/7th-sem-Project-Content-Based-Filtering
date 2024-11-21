
from os import truncate
from xmlrpc.client import METHOD_NOT_FOUND

from flask import Flask, request, render_template, session, url_for, redirect   
import random
from flask_sqlalchemy import SQLAlchemy
from pyexpat.errors import messages
from sqlalchemy import text
import pandas as pd
import math




#object of flask
#built in syntax cannot change
app = Flask(__name__)

#for database mysqlclient and flasksqlalchemy is installed

#database configuration
app.secret_key = "secretkeycanbeanythingonlyforsecuritypurpose"
app.config['SQLALCHEMY_DATABASE_URI'] = "mysql+pymysql://root:@localhost:3308/ecom?ssl_disabled=true"
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
db = SQLAlchemy(app)


class DisplayProduct(db.Model):
    __tablename__ = 'displayproduct'  # This should match the table name in your MySQL database
    # Define the columns based on your schema
    pid = db.Column(db.Integer, primary_key=True, autoincrement=True)  # Primary key with auto increment
    pname = db.Column(db.String(255), nullable=False)  # Product name (varchar)
    reviewcount = db.Column(db.Float, nullable=False)  # Review count (float)
    brand = db.Column(db.String(255), nullable=False)  # Brand name (varchar)
    imageurl = db.Column(db.Text, nullable=False)  # Image URL (text)
    rating = db.Column(db.Float, nullable=False)  # Rating (float)
    description=db.Column(db.Text,nullable=False)
    price = db.Column(db.Integer, nullable=False)  # Price (integer)

    def __repr__(self):
        return f'<DisplayProduct {self.pname}>'



class Products(db.Model):
    __tablename__ = 'products'  # This should match the table name in your MySQL database
    # Define the columns based on your schema
    id = db.Column(db.Integer, primary_key=True, autoincrement=True)  # Primary key with auto increment
    productid = db.Column(db.String(255), nullable=False)  # Primary key with auto increment
    productname = db.Column(db.String(255), nullable=False)  # Product name (varchar)
    reviewcount = db.Column(db.Float, nullable=False)  # Review count (float)
    productbrand = db.Column(db.String(255), nullable=False)  # Brand name (varchar)
    imageurl = db.Column(db.Text, nullable=False)  # Image URL (text)
    rating = db.Column(db.Float, nullable=False)  # Rating (float)
    description = db.Column(db.Text, nullable=False)
    price = db.Column(db.Integer, nullable=False)  # Price (integer)

    def __repr__(self):
        return f'<Products {self.pname}>'

class Signup(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    username = db.Column(db.String(100), nullable=False)
    email = db.Column(db.String(100), nullable=False)
    password = db.Column(db.String(100), nullable=False)
    repassword= db.Column(db.String(100),nullable=False)


class Signin(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    username = db.Column(db.String(100), nullable=False)
    password = db.Column(db.String(100), nullable=False)


trending_products = pd.read_csv("models/trending_products.csv")
train_data = pd.read_csv("models/clean_dataset.csv")




def truncate(text, length):
    if len(text) > length:
        return text[:length] + "..."
    else:
        return text


def compute_tf_idf(train_data):
    term_freqs = []
    doc_freqs = {}
    num_documents = len(train_data)

    for tags in train_data['Tags']:
        terms = tags.lower().split()
        term_count = {}
        for term in terms:
            term_count[term] = term_count.get(term, 0) + 1

        term_freqs.append(term_count)

        for term in term_count.keys():
            doc_freqs[term] = doc_freqs.get(term, 0) + 1

    tf_idf_matrix = []
    for term_count in term_freqs:
        tf_idf_vector = {}
        for term, count in term_count.items():
            tf = count / len(term_count)
            idf = math.log(num_documents / (1 + doc_freqs[term]))
            tf_idf_vector[term] = tf * idf
        tf_idf_matrix.append(tf_idf_vector)

    return tf_idf_matrix


def cosine_similarity(vector1, vector2):
    # Compute cosine similarity between two TF-IDF vectors
    dot_product = sum(vector1.get(term, 0) * vector2.get(term, 0) for term in vector1)
    norm1 = math.sqrt(sum(v ** 2 for v in vector1.values()))
    norm2 = math.sqrt(sum(v ** 2 for v in vector2.values()))

    if norm1 == 0 or norm2 == 0:
        return 0.0

    return dot_product / (norm1 * norm2)


def content_based_recommendations(train_data, item_name, top_n=10):
    if item_name not in train_data['Name'].values:
        print(f"Item '{item_name}' not found in the training data.")
        return pd.DataFrame()

    # Compute TF-IDF matrix for all items
    tf_idf_matrix = compute_tf_idf(train_data)
    # Find the index of the item in the dataset
    item_index = train_data[train_data['Name'] == item_name].index[0]
    # Calculate cosine similarity
    similarities = []
    for i, tf_idf_vector in enumerate(tf_idf_matrix):
        similarity = cosine_similarity(tf_idf_matrix[item_index], tf_idf_vector)
        similarities.append((i, similarity))
    # Sort by similarity scores in descending order
    similarities = sorted(similarities, key=lambda x: x[1], reverse=True)
    # Get the indices of the top N most similar items
    top_similar_indices = [idx for idx, _ in similarities[1:top_n + 1]]
    # Retrieve details of the top similar items
    recommended_items_details = train_data.iloc[top_similar_indices][
        ['ID','Name', 'ReviewCount', 'Brand', 'ImageURL', 'Rating','Price','Description']]
    print(recommended_items_details['Description'])
    return recommended_items_details




#create route
@app.route("/")
def index():
    # random_productImage = [random.choice(random_image_urls) for _ in range(len(trending_products))]
    products = DisplayProduct.query.all()
    return render_template('index.html', data=products)


@app.route("/main")
def main():
    return render_template('main.html',content_based_rec = None, truncate= truncate)


@app.route("/index")
def indexredirect():
    products = DisplayProduct.query.all()
    return render_template('index.html',
                           data=products
                          )


@app.route("/fetch")
def fetch():
    # Query all data from the displayproduct table
    products = DisplayProduct.query.all()
    print(products)
    # Render the fetch.html template and pass the fetched data
    return render_template('fetch.html', data=products)


@app.route('/product/<string:pid>')
def product_detail(pid):
    # Check if the product exists in the database
    query = text("SELECT * FROM displayproduct WHERE pid = :pid")
    result = db.session.execute(query, {'pid': pid}).fetchone()

    if result:
        # If the product is found in the database
        pname = result[1]
        product_info = {
            'ID': result[0],
            'Name': result[1],
            'ReviewCount': result[2],
            'Brand': result[3],
            'ImageURL': result[4],
            'Rating': result[5],
            'Description': result[6] if len(result) > 7 else "No description available.",
            'Price': result[7] if len(result) > 6 else None,  # Adjust if Price column exists
        }
        print(product_info['Description'])
    else:
        # If the product is not found in the database, check the dataset
        result_db = train_data[train_data['ID'] == pid]
        if not result_db.empty:
            result = result_db.iloc[0]  # Use the first (and only) result
            pname = result['Name']
            product_info = {
                'ID': result['ID'],
                'Name': result['Name'],
                'ReviewCount': result['ReviewCount'],
                'Brand': result['Brand'],
                'ImageURL': result['ImageURL'],
                'Rating': result['Rating'],
                'Description': result['Description'],  # Default description
                'Price': result['Price'] if 'Price' in result else None
            }
            print(product_info['Description'])
        else:
            # If the product is not found anywhere
            return "Product not found", 404

    # Fetch recommendations
    recommendations1 = content_based_recommendations(train_data, pname, top_n=5)

    # Optional: If no recommendations are found, display a message
    if pname not in train_data['Name'].values:
        message = f"No recommendations available for the product '{pname}' as it is not found in the dataset."
    else:
        message = None

    return render_template(
        'product_detail.html',
        product=product_info,
        recommendations1=recommendations1.to_dict(orient='records'),
        message=message
    )



@app.route("/signup", methods=['POST','GET'])
def signup():
    if request.method == 'POST':
        username = request.form['username']
        email = request.form['email']
        password = request.form['password']
        repassword = request.form['repassword']

        if(password == repassword):
            new_signup = Signup(username=username, email=email, password=password,repassword= repassword)
            db.session.add(new_signup)
            db.session.commit()
            signup_message="User signed up successfully"
        else:
            signup_message="Password donot match"

        products = DisplayProduct.query.all()
        return render_template('index.html',data= products

                               )


@app.route("/signin", methods=['GET','POST'])
def signin():
    if request.method == 'POST':
        username = request.form['signinUsername']
        password = request.form['signinPassword']

        user = Signup.query.filter_by(username=username, password=password).first()
        if user:
            session['logged_in']=True
            signin_message="user signed in successfully"
        else:
            signin_message = "invalid username or password"

        products = DisplayProduct.query.all()
        return render_template('index.html',
                               data=products,messages=signin_message
                               )
    return render_template('index.html',message="Please log in")

@app.route("/logout")
def logout():
    session.pop('logged_in', None)
    session.pop('username', None)
    return redirect(url_for('index'))


@app.route("/recommendations", methods=['POST','GET'])
def recommendations():
    if request.method == 'POST':
        prod = request.form.get('prod')
        nbr = int(request.form.get('nbr'))
        content_based_rec = content_based_recommendations(train_data, prod, top_n=nbr)
        if prod not in train_data['Name'].values:
            message = f"No recommendations available for the product '{prod}' as it is not found in the dataset."
            return render_template('main.html', content_based_rec=pd.DataFrame(), message=message)
        if content_based_rec.empty:
            message = "No recommendations available for this product."
            return render_template('main.html', message=message)
        else:
            # Create a list of random image URLs for each recommended product
            # random_product_image_urls = [random.choice(random_image_urls) for _ in range(len(trending_products))]
            price = [40, 50, 60, 70, 100, 122, 106, 50, 30, 50]


            image_urls = content_based_rec['ImageURL'].tolist()

        return render_template('main.html', content_based_rec=content_based_rec, truncate=truncate,
                                   random_product_image_urls=image_urls,
                                   random_price=random.choice(price))

@app.route("/suggestions")
def suggestions():
    query = request.args.get("query", "")
    print(f"Query received: {query}")
    query = query.lower()
    matches = train_data[train_data['Name'].str.lower().str.startswith(query, na=False)]
    suggestions = matches['Name'].head(10).tolist()
    return {"suggestions": suggestions}


@app.route("/search", methods=['GET'])
def search():
    query = request.args.get('query')  # Get the query from the search bar
    if query:
        # Query the database for products matching the search term
        results = Products.query.filter(Products.productname.ilike(f"%{query}%")).all()
        recommendations1 = content_based_recommendations(train_data, query, top_n=5)
        # Render the search results page
        return render_template('search.html', results=results,  recommendations1=recommendations1.to_dict(orient='records'),)
    else:
        return "No search query provided.", 400


@app.route("/cart",methods=['POST'])
def cart():
    pid = request.form.get("pid")
    pname = request.form.get("pname")
    price = request.form.get("price")
    image = request.form.get("image")

    if 'logged_in' not in session:
        return redirect(url_for('signin'))
    else:
        return render_template('cart.html')



@app.route("/about")
def about():
    return render_template('about.html')

@app.route("/services")
def services():
    return render_template('services.html')

#duita folder hunai parxa static ma images, video, css hunuparxa
#templates ma html

if __name__ == '__main__':
    app.run(debug=True)
