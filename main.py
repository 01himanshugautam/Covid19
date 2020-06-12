from flask import Flask, render_template, request, session, redirect
from flask_sqlalchemy import SQLAlchemy
import json
# pip install flask
# pip install flask_sqlalchemy
# pip install jinja


with open('config.json', 'r') as c:
    params = json.load(c)["params"]

local_server = True
app = Flask(__name__)

if(local_server):
    app.config['SQLALCHEMY_DATABASE_URI'] = params['local_uri']
else:
    app.config['SQLALCHEMY_DATABASE_URI'] = params['prod_uri']


db = SQLAlchemy(app)

class State(db.Model):
    # Sno Name_of_State Active_cases Discharged Deaths Total Date
    Sno = db.Column(db.Integer(), primary_key=True)
    Name_of_State = db.Column(db.String(80), nullable=False)
    Active_cases= db.Column(db.Integer(), nullable=False)
    Discharged= db.Column(db.Integer(), nullable=False)
    Deaths= db.Column(db.Integer(), nullable=False)
    Total= db.Column(db.Integer(),nullable=False)
    Date = db.Column(db.String(12), nullable=True)

class Country(db.Model):
    # Sno Name_of_State Active_cases Discharged Deaths Total Date
    Sno = db.Column(db.Integer(), primary_key=True)
    Name_of_Country = db.Column(db.String(80), nullable=False)
    Active_cases= db.Column(db.Integer(), nullable=False)
    Discharged= db.Column(db.Integer(), nullable=False)
    Deaths= db.Column(db.Integer(), nullable=False)
    Total= db.Column(db.Integer(),nullable=False)
    Date = db.Column(db.String(12), nullable=True)
    

@app.route("/")
def home():
    return render_template('home.html',params=params)

@app.route("/state")
def state():
    state=State.query.filter_by().all()
    return render_template('state.html',params=params,state=state)

@app.route("/country")
def country():
    country=Country.query.filter_by().all()
    return render_template('country.html',params=params,country=country)


@app.route("/research")
def research():
    return render_template('research.html',params=params)


@app.route("/evolution")
def evolution():
    return render_template('evolution.html',params=params)
    
@app.route("/about")
def about():
    return render_template('about.html',params=params)


app.run(debug=True)
