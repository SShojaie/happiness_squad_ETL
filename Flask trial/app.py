#from flask import Flask, render_template, redirect
#from flask_pymongo import PyMongo
#import scrape_costa

#import numpy as np

import sqlalchemy
from sqlalchemy.ext.automap import automap_base
from sqlalchemy.orm import Session
from sqlalchemy import create_engine, func

from flask import Flask, jsonify

# Create an instance of Flask
app = Flask(__name__)


# Use PyMongo to establish Mongo connection
# mongo = PyMongo(app, uri="mongodb://localhost:27017/weather_app")

# create SQL light (posgrad) database connection 
connection_string = "postgres:123@localhost:5432/Cnd_Idx_Wellbeing"
engine = create_engine(f'postgresql://{connection_string}')

# reflect an existing database into a new model
base = automap_base()
base.prepare(engine, reflect=True)

# Save reference to the table
Environment = base.classes.environment

data = db.session.query(func.your_schema.your_function_name()).all()



# Route to render index.html template using data from SQL Light
@app.route("/")
def welcome():
    """List all available api routes."""
    return (
        f"Available Routes:<br/>"
        f"/api/v1.0/names<br/>"
        f"/api/v1.0/passengers"
    )

# Mongo Route    
#@app.route("/")
#def home():
#    # Find one record of data from the mongo database
#    happiness_data = mongo.db.collection.find_one()
#    #print(destination_data)
#    print("I got here")
#    # Return template and data
#    return render_template("index.html", vacation=happiness_data)

# Route that will trigger the scrape function
#def scrape():
#    # Run the scrape function
#    costa_data = scrape_costa.scrape_info()

    # # Update the Mongo database using update and upsert=True
    # mongo.db.collection.update({}, costa_data, upsert=True)

    # # Redirect back to home page
    # return redirect("/")


if __name__ == "__main__":
    app.run(debug=True)
