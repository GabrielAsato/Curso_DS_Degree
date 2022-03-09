/*Livraria*/

-- Criar base de dados
CREATE DATABASE livraria;

-- Criar as tabelas
-- cliente(id_cliente(PK), nome, cpf, endereco, telefone, email)
CREATE TABLE cliente(
	id_cliente int PRIMARY KEY,
	nome varchar(20) null,
	cpf char(11) UNIQUE,
	endereco varchar(40) NOT null,
	telefone varchar(9) NOT null,
	email varchar(30) NOT null
);

-- pedido(id_pedido(PK), id_cliente(FK), array_isbn)
CREATE TABLE pedido(
	id_pedido int PRIMARY KEY,
	id_cliente int NOT null REFERENCES cliente(id_cliente),
	array_isbn varchar(13) ARRAY
);

-- estoque(id_estoque(PK), isbn, qtde)
CREATE TABLE estoque(
	id_estoque int PRIMARY KEY,
	isbn varchar(13) NOT null,
	qtde int CHECK (qtde > 0)
);

-- editora(id_editora(PK), nome_contato, email_ed, telefone_1, telefone_2, id_estoque(FK))
CREATE TABLE editora(
	id_editora int PRIMARY KEY,
	nome_contato varchar(20) null,
	email_ed varchar(30) NOT null,
	telefone_1 varchar(9) NOT null,
	telefone_2 varchar(9) null,
	id_estoque int NOT null REFERENCES estoque(id_estoque)
);

-- livro(id_livro(PK), titulo, autor, editora, id_editora(FK), isbn, categoria, ano_publi)
CREATE TABLE livro(
	id_livro int PRIMARY KEY,
	titulo varchar(40) null,
	autor varchar(20) NOT null,
	editora varchar(20) NOT null,
	id_editora int NOT null REFERENCES editora(id_editora),
	isbn varchar(13) NOT null,
	categoria varchar(10) null,
	ano_publi date null
);

-- carrinho(id_cliente(FK), id_livro(FK))
CREATE TABLE carrinho(
	id_cliente int NOT null REFERENCES cliente(id_cliente),
	id_livro int NOT null REFERENCES livro(id_livro)
);