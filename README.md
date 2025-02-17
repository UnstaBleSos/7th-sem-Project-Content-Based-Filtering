First Install pycharm community edition as the code editor 

Install and import  all the dependencies : <br>
import uuid<br>
from flask import Flask, request, render_template, session, url_for, redirect<br>
import random<br>
from flask_sqlalchemy import SQLAlchemy<br>
from sqlalchemy import text<br>
import pandas as pd<br>
import math<br>
import hmac<br>
import hashlib<br>
import base64<br>

CREATE a database with the name 'ecom' and import the ecom.sql on that database <br>

ON app.py line 22  app.config['SQLALCHEMY_DATABASE_URI'] = "mysql+pymysql://root:@localhost:3308/ecom?ssl_disabled=true"<br>
change the port number @localhost:3308 to the port of your xammp mysql port 

as the ESEWA v2 is used as the payment api the <br>
the esewaID : 9806800001<br>
password is : Nepal@123
