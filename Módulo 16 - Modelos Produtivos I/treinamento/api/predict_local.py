import json
import pickle

import numpy as np
import pandas as pd

body = [{
    'sepal length (cm)': 5.1, 
    'sepal width (cm)': 3.5, 
    'petal length (cm)': 1.4, 
    'petal width (cm)': 0.2
    }]
# body = json.loads(entrada)

with open("/dados/model.pickle", "rb") as f:
    modelo = pickle.load(f)
    print(modelo)
    
print(modelo.predict(pd.DataFrame(body)))