from app import app
from flask import render_template

@app.route('/')
def index():
    name = 'Brie'
    title = 'My First Flask'
    return render_template('index.html', name_of_user=name, title=title)

@app.route('/top5')
def topfive(): 
    title = 'My Top 5'
    #scifi = ['Stargate SG-1', 'Star Trek (1966-2005)', 'Doctor Who (2005-)', 'The Fifth Element', 'Rick and Morty' ]
    return render_template('top5.html', title=title) #scifi=scifi