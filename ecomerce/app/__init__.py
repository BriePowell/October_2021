from flask import Flask

app = Flask(__name__)
app.config['SECRET_KEY'] = 'lskenltoqnzopanZoapwqwpdpfjg'

#db = SQLAlchemy(app)

from app import routes

#import routes conmes after