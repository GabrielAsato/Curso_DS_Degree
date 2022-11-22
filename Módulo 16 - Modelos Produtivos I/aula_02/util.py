from pathlib import Path
import pickle

def abrir_pickle(): 
    with open(Path('./dados.pickle'), 'rb') as arq_origem:
        dados_turma = pickle.load(arq_origem)
    return dados_turma