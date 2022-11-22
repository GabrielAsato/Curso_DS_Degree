'''
vai consumir os dados que estao na api
'''

import requests

url = 'https://cdn.jsdelivr.net/gh/fawazahmed0/currency-api@1/latest/currencies/usd/brl.json'
req = requests.get(url=url)

dados_encontrados = req.json()    # converte de json para objeto python!
cotacao = dados_encontrados['brl']

dols = float(input('entre com o valor em dolares: '))
print(f'valor em reais: R$ {dols*cotacao:.2f}')
