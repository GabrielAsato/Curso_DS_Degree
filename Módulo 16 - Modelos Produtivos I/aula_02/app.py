import pickle
from flask import Flask

from util import abrir_pickle

app = Flask(__name__)

dados_alunos = abrir_pickle()

@app.route("/hello")
def hello():
    return {'message': 'Hello World'}

@app.route("/")
def index():
    return "Estamos na index"

@app.route("/alunos/all")
def todos_alunos():
    lista_alunos = []
    for d in dados_alunos:
        lista_alunos.append(
            {
                'nome': d['nome'],
                'notas': d['notas'],
                'media': sum(d['notas']) / len(d['notas'])
            }
        )

    return lista_alunos

@app.route("/alunos/list")
def html_alunos(): 
    saida = '<ul>'
    for aluno in dados_alunos:
        saida += f"<li>{aluno['nome']}</li>"
    saida += '<ul>'
    return saida


@app.route("/alunos/nome/<nome>")
def unico_aluno(nome): 
    for pessoa in dados_alunos:
        if pessoa['nome'] == nome:
            return pessoa
    
    return {}