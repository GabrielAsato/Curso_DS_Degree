import json

dados = {
    "nome": "Erick",
    "cidade": "SBC",
    "idade": 42
}

json_saida = json.dumps(dados)
print(json_saida.upper())
print(type(json_saida))