# Happiness Squad doing ETL
# flask function to retrief data.

import sqlalchemy
from sqlalchemy.ext.automap import automap_base
from sqlalchemy.orm import Session
from sqlalchemy import create_engine, func
import pandas as pd
from flask import Flask, jsonify, render_template

# Create an instance of Flask
app = Flask(__name__)

# create SQL light (posgrad) database connection 
connection_string = "postgres:123@localhost:5432/Cnd_Idx_Wellbeing"
engine = create_engine(f'postgresql://{connection_string}')

# Flask route to retrieve data and pass to HTML file
# here we read data from happiness news table and pass it as variable called "happy_news" 
@app.route("/")
def return_data():
    sql = "SELECT * FROM happiness_news LIMIT 10"
    results = pd.read_sql(sql, con=engine)
    results = results.to_json(orient="records")
    return render_template("index.html", happy_news=results)

if __name__ == "__main__":
    app.run(debug=True)
