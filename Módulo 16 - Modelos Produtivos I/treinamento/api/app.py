import json
import pickle

import numpy as np
import pandas as pd
from flask import Flask

app = Flask(__name__)

@app.route('/predizer/<sl>/<sw>/<pl>/<pw>')
def predizer(sl :float, sw :float, pl :float, pw :float):
    body = [{
        'sepal length (cm)': float(sl), 
        'sepal width (cm)': float(sw), 
        'petal length (cm)': float(pl), 
        'petal width (cm)': float(pw)
    }]

    with open("/dados/model.pickle", "rb") as f:
        modelo = pickle.load(f)

    return { 
        "resultado": modelo.predict(pd.DataFrame(body)).tolist()
    }