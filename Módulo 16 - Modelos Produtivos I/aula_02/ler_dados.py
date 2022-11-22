import pickle
from pathlib import Path

with open(Path('./dados.pickle'), 'rb') as arq_origem:
    dados_turma = pickle.load(arq_origem)

print(dados_turma)