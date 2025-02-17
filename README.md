First Install pycharm community edition as the code editor 

Install and import  all the dependencies : 

import uuid
from flask import Flask, request, render_template, session, url_for, redirect
import random
from flask_sqlalchemy import SQLAlchemy
from sqlalchemy import text
import pandas as pd
import math
import hmac
import hashlib
import base64

CREATE a database with the name 'ecom' and import the ecom.sql on that database 

ON app.py line 22  app.config['SQLALCHEMY_DATABASE_URI'] = "mysql+pymysql://root:@localhost:3308/ecom?ssl_disabled=true"
change the port number @localhost:3308 to the port of your xammp mysql port 

as the ESEWA v2 is used as the payment api the 
the esewaID : 9806800001
password is : Nepal@123
