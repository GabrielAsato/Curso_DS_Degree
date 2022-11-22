import pickle 

turma_814 = [
{
    "nome": "Erick",
    "notas": [1.0, 2.0, 3.0, 4.0]
},
{
    "nome": "Tulio",
    "notas": [10.0, 9.0, 8.0, 7.0]
},
{
    "nome": "Marcelo",
    "notas": [7.0, 8.0, 7.0, 5.0]
},
{
    "nome": "Alessandro",
    "notas": [10.0, 10.0, 10.0, 0.0]
},
{
    "nome": "Diego",
    "notas": [10.0, 10.0, 9.5, 10.0]
}
]


with open('dados.pickle', mode='wb') as arquivo_destino:
    pickle.dump(turma_814, arquivo_destino)