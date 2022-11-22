import pickle

from sklearn.ensemble import RandomForestClassifier
from sklearn.datasets import load_iris
import pandas as pd

data = load_iris(as_frame=True)
X = data["data"]
y = data["target"]
estimador = RandomForestClassifier()
estimador.fit(X,y)

# Exportacao para pickle
with open("/dados/model.pickle", "wb") as f:
    pickle.dump(estimador,f)