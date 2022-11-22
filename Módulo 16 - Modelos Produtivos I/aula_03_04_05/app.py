from flask import Flask
import redis

config = {
    "DEBUG": True,
}
app = Flask(__name__)
app.config.from_mapping(config)


@app.route("/ola")
def ola(): 
    return "Ola Mundo"

@app.route("/usuarios")
def lista_usuarios():
    redis_conn = redis.Redis(host="redis", port=6379, db=0, decode_responses=True)
    usuarios_list = redis_conn.smembers("nomes")
    return list(usuarios_list)

@app.route('/usuario/<nome>')
def registra_usuario(nome):
    redis_conn = redis.Redis(host="redis", port=6379, db=0, decode_responses=True)
    redis_conn.sadd("nomes", nome)
    return f"usuario {nome} registrado com sucesso."