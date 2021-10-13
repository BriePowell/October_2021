from app import app
from flask import render_template

@app.route('/')
def index():
    name = 'Brie'
    title = 'The Blue Pages'
    return render_template('index.html', name_of_user=name, title=title)
