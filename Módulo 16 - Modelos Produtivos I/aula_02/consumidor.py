'''
vai consumir os dados que estao na api
'''

import requests

url = 'http://127.0.0.1:5000/alunos/all'
req = requests.get(url=url)

# print(req.text)
dados_encontrados = req.json()    # converte de json para objeto python!
for pos, d in enumerate(dados_encontrados):
    print(pos, d)