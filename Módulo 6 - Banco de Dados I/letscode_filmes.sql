-- letscode_filmes

--CREATE DATABASE letscode_filmes;

CREATE TABLE letscode_genero(
	id_genero int NOT null,
	nome varchar(40) NOT null,
	PRIMARY KEY (id_genero)
);

CREATE TABLE letscode_filme(
	id_filme int NOT null,
	nome varchar(40) NOT null,
	nota int null,
	diretor varchar(20) NOT null,
	bilheteria decimal(9,2) null,
	classificacao int null,
	id_genero int NOT null,
	FOREIGN KEY (id_genero)
		REFERENCES letscode_genero(id_genero),
	PRIMARY KEY (id_filme)
);

CREATE TABLE letscode_ator(
	id_ator int NOT null,
	nome varchar(40) NOT null,
	sexo char(1) null,
	data_nascimento date NOT null,
	id_filme int NOT null,
	FOREIGN KEY (id_filme)
		REFERENCES letscode_filme(id_filme),
);
-- Adicionar id_ator em letscode_)ator uma PRIMARY KEY
ALTER TABLE letscode_ator ADD PRIMARY KEY (id_ator); 

CREATE TABLE letscode_participacoes(
	id_participacao int NOT null,
	id_filme int NOT null,
	FOREIGN KEY (id_filme)
		REFERENCES letscode_filme(id_filme),
	id_ator int NOT null,
	FOREIGN KEY (id_ator)
		REFERENCES letscode_ator(id_ator)
);