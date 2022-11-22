# Comandos do Docker

Para **criar** a imagem

```bash
docker build -it --rm <nome>:<versao>
```

```bash
docker build -it --rm ada814:1
```

--- 

Ver as imagens existentes para rodar 

```bash
docker images
```

---

Para **rodar** o container a partir da imagem: 

```bash
docker run -d --name flask_01 -p "12345:5000" ada814:1
```

---

Para **parar** um container

```bash
docker kill <nome-container>
```

--- 

Para **apagar** um container:

```bash
docker rm <nome ou id>
```


# ajustar
`docker run -it --name flask_01 -p "12345:5000" ada814:1`
nome do container: flask_01 (--name)
nome da imagem origem: ada814:1

--- 

Range de portas: 

> 1024
< 65535
