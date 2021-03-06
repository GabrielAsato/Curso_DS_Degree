/*Estrutura do database bd_papelaria*/
--CREATE DATABASE bd_papelaria;

/*Estrutura da tabela tb_produto*/
CREATE TABLE tb_produto (
id SERIAL,
status CHAR(1) NOT NULL DEFAULT 'A',
descricao VARCHAR(50),
estoque_minimo INTEGER,
estoque_maximo INTEGER,
PRIMARY KEY (id));

/*Estrutura da tabela tb_entrada_produto*/
CREATE TABLE tb_entrada_produto (
id SERIAL,
qtde INTEGER,
valor_unitario DECIMAL(9,2),
data_entrada DATE,
PRIMARY KEY (id));

/*Estrutura da tabela tb_estoque*/
CREATE TABLE tb_estoque (
id SERIAL,
qtde INTEGER,
valor_unitario DECIMAL(9,2),
PRIMARY KEY (id));

/*Estrutura da tabela tb_saida_produto*/
CREATE TABLE tb_saida_produto (
id SERIAL,
qtde INT,
data_saida DATE,
valor_unitario DECIMAL(9,2),
PRIMARY KEY (id));

/*Inserindo 20 registros na tabela tb_produto
Campo "status" indica se o cadastro está ativo “A” ou inativo “I”*/
INSERT INTO tb_produto(status,descricao,estoque_minimo,estoque_maximo) VALUES ('A', 'Lapis', 10, 20);
INSERT INTO tb_produto(status,descricao,estoque_minimo,estoque_maximo) VALUES ('A', 'Lapis de cor', 12, 60);
INSERT INTO tb_produto(status,descricao,estoque_minimo,estoque_maximo) VALUES ('A', 'Lapis de cera', 12, 50);
INSERT INTO tb_produto(status,descricao,estoque_minimo,estoque_maximo) VALUES ('A', 'Marcadores',10, 50);
INSERT INTO tb_produto(status,descricao,estoque_minimo,estoque_maximo) VALUES ('A', 'Esferograficas (azul, vermelha, preta e verde)', 7, 30);
INSERT INTO tb_produto(status,descricao,estoque_minimo,estoque_maximo) VALUES ('A', 'Etiqueta', 8, 100);
INSERT INTO tb_produto(status,descricao,estoque_minimo,estoque_maximo) VALUES ('A', 'Borracha', 20, 70);
INSERT INTO tb_produto(status,descricao,estoque_minimo,estoque_maximo) VALUES ('A', 'Caderno pautado', 30, 50);
INSERT INTO tb_produto(status,descricao,estoque_minimo,estoque_maximo) VALUES ('A', 'Caderno quadriculado', 30, 50);
INSERT INTO tb_produto(status,descricao,estoque_minimo,estoque_maximo) VALUES ('A', 'Caderno de musica', 16, 50);
INSERT INTO tb_produto(status,descricao,estoque_minimo,estoque_maximo) VALUES ('A', 'Calculadora', 20, 30);
INSERT INTO tb_produto(status,descricao,estoque_minimo,estoque_maximo) VALUES ('A', 'Regua de 20 cm', 13, 40);
INSERT INTO tb_produto(status,descricao,estoque_minimo,estoque_maximo) VALUES ('I', 'Compasso',    8, 40);
INSERT INTO tb_produto(status,descricao,estoque_minimo,estoque_maximo) VALUES ('I', 'Giz de cera', 9, 30);
INSERT INTO tb_produto(status,descricao,estoque_minimo,estoque_maximo) VALUES ('I', 'Tesoura', 11, 20);
INSERT INTO tb_produto(status,descricao,estoque_minimo,estoque_maximo) VALUES ('I', 'Estojo',    21, 100);
INSERT INTO tb_produto(status,descricao,estoque_minimo,estoque_maximo) VALUES ('I', 'Papel Manteiga',    15, 50);
INSERT INTO tb_produto(status,descricao,estoque_minimo,estoque_maximo) VALUES ('I', 'Mochila', 6, 100);
INSERT INTO tb_produto(status,descricao,estoque_minimo,estoque_maximo) VALUES ('I', 'T-shirt', 25, 120);
INSERT INTO tb_produto(status,descricao,estoque_minimo,estoque_maximo) VALUES ('I', 'Corretivo', 16, 30);

/*Inserindo 20 registros na tabela tb_entrada_produto*/
INSERT INTO tb_entrada_produto(qtde,valor_unitario,data_entrada) VALUES (20, '1.00', '2000-12-31');
INSERT INTO tb_entrada_produto(qtde,valor_unitario,data_entrada) VALUES (60, '1.00', '2021-01-01');
INSERT INTO tb_entrada_produto(qtde,valor_unitario,data_entrada) VALUES (50, '2.00', '2021-01-31');
INSERT INTO tb_entrada_produto(qtde,valor_unitario,data_entrada) VALUES (50, '5.00', '2021-01-31');
INSERT INTO tb_entrada_produto(qtde,valor_unitario,data_entrada) VALUES (30, '10.00', '2021-01-22');
INSERT INTO tb_entrada_produto(qtde,valor_unitario,data_entrada) VALUES (100, '8.00', '2021-01-13');
INSERT INTO tb_entrada_produto(qtde,valor_unitario,data_entrada) VALUES (70, '9.00', '2021-03-31');
INSERT INTO tb_entrada_produto(qtde,valor_unitario,data_entrada) VALUES (50, '17.00', '2021-03-12');
INSERT INTO tb_entrada_produto(qtde,valor_unitario,data_entrada) VALUES (50, '9.00', '2021-03-09');
INSERT INTO tb_entrada_produto(qtde,valor_unitario,data_entrada) VALUES (50, '3.00', '2021-03-31');
INSERT INTO tb_entrada_produto(qtde,valor_unitario,data_entrada) VALUES (30, '2.00', '2021-02-26');
INSERT INTO tb_entrada_produto(qtde,valor_unitario,data_entrada) VALUES (40, '5.00', '2021-02-10');
INSERT INTO tb_entrada_produto(qtde,valor_unitario,data_entrada) VALUES (40, '4.00', '2021-02-25');
INSERT INTO tb_entrada_produto(qtde,valor_unitario,data_entrada) VALUES (30, '9.00', '2021-02-10');
INSERT INTO tb_entrada_produto(qtde,valor_unitario,data_entrada) VALUES (20, '3.00', '2021-02-13');
INSERT INTO tb_entrada_produto(qtde,valor_unitario,data_entrada) VALUES (100, '7.00', '2021-01-31');
INSERT INTO tb_entrada_produto(qtde,valor_unitario,data_entrada) VALUES (50, '2.00', '2021-01-25');
INSERT INTO tb_entrada_produto(qtde,valor_unitario,data_entrada) VALUES (100, '3.00', '2021-03-31');
INSERT INTO tb_entrada_produto(qtde,valor_unitario,data_entrada) VALUES (120, '8.00', '2021-03-30');
INSERT INTO tb_entrada_produto(qtde,valor_unitario,data_entrada) VALUES (30, '6.00', '2021-02-23');

/*Inserindo 20 registros na tabela tb_estoque*/
INSERT INTO tb_estoque(qtde,valor_unitario) VALUES (20, '1.00');
INSERT INTO tb_estoque(qtde,valor_unitario) VALUES (60, '1.50');
INSERT INTO tb_estoque(qtde,valor_unitario) VALUES (50, '2.00');
INSERT INTO tb_estoque(qtde,valor_unitario) VALUES (50, '5.00');
INSERT INTO tb_estoque(qtde,valor_unitario) VALUES (30, '10.00');
INSERT INTO tb_estoque(qtde,valor_unitario) VALUES (100, '8.00');
INSERT INTO tb_estoque(qtde,valor_unitario) VALUES (70, '9.00');
INSERT INTO tb_estoque(qtde,valor_unitario) VALUES (50, '17.00');
INSERT INTO tb_estoque(qtde,valor_unitario) VALUES (50, '9.00');
INSERT INTO tb_estoque(qtde,valor_unitario) VALUES (50, '3.00');
INSERT INTO tb_estoque(qtde,valor_unitario) VALUES (30, '2.00');
INSERT INTO tb_estoque(qtde,valor_unitario) VALUES (40, '5.00');
INSERT INTO tb_estoque(qtde,valor_unitario) VALUES (40, '4.00');
INSERT INTO tb_estoque(qtde,valor_unitario) VALUES (30, '9.00');
INSERT INTO tb_estoque(qtde,valor_unitario) VALUES (20, '3.00');
INSERT INTO tb_estoque(qtde,valor_unitario) VALUES (100, '7.00');
INSERT INTO tb_estoque(qtde,valor_unitario) VALUES (50, '2.00');
INSERT INTO tb_estoque(qtde,valor_unitario) VALUES (100, '3.00');
INSERT INTO tb_estoque(qtde,valor_unitario) VALUES (120, '8.00');
INSERT INTO tb_estoque(qtde,valor_unitario) VALUES (30, '6.00');

/*Inserindo 10 registros na tabela tb_saida_produto*/
INSERT INTO tb_saida_produto(qtde,data_saida,valor_unitario) VALUES (10, '2021-05-01', '2.00');
INSERT INTO tb_saida_produto(qtde,data_saida,valor_unitario) VALUES (20, '2021-05-01', '5.00');
INSERT INTO tb_saida_produto(qtde,data_saida,valor_unitario) VALUES (40, '2021-05-01', '4.00');
INSERT INTO tb_saida_produto(qtde,data_saida,valor_unitario) VALUES (04, '2021-05-01', '9.00');
INSERT INTO tb_saida_produto(qtde,data_saida,valor_unitario) VALUES (05, '2021-05-01', '3.00');
INSERT INTO tb_saida_produto(qtde,data_saida,valor_unitario) VALUES (100, '2021-05-01', '7.00');
INSERT INTO tb_saida_produto(qtde,data_saida,valor_unitario) VALUES (30, '2021-05-01', '2.00');
INSERT INTO tb_saida_produto(qtde,data_saida,valor_unitario) VALUES (20, '2021-05-01', '3.00');
INSERT INTO tb_saida_produto(qtde,data_saida,valor_unitario) VALUES (05, '2021-05-01', '8.00');
INSERT INTO tb_saida_produto(qtde,data_saida,valor_unitario) VALUES (04, '2021-05-01', '6.00');

--------------------------------------------------------------------------------------------------

-- Aula 47 (07/03/2022) - Anotações

-- Constraints (maioria já utilizada)

-- NOT null: ... cod_cli int NOT null, ...
-- UNIQUE: ... cpf char(11) UNIQUE, ...
-- DEFAULT: ... saldo DOUBLE DEFAULT 0.0, # caso não tenha valor, retorna 0.0., ...
-- CHECK: ... idade int CHECK (idade >= 18), ...
-- PRIMARY KEY: ... PRIMARY KEY (id_gen), ...
-- FOREIGN KEY: ... FOREIGN KEY (id_livro) REFERENCES livro(id_livro), ...

-- Funções agregadoras: MIN() e MAX()
SELECT MIN(valor_unitario) FROM tb_entrada_produto;
SELECT MAX(valor_unitario) FROM tb_entrada_produto;

-- LIMIT 1: Como utilizar método .head()
SELECT * FROM tb_entrada_produto LIMIT 5;

-- Funções agregadoras: COUNT()
SELECT COUNT(*) FROM tb_entrada_produto;

-- Funções agregadoras: SUM()
-- GROUP BY 1, 1 sendo qtde
SELECT * FROM tb_saida_produto;
SELECT qtde, SUM(valor_unitario) FROM tb_saida_produto GROUP BY 1;

-- Funções agregadoras: AVG()
-- GROUP BY 1, 1 sendo valor_unitario
-- Como se fosse um df.groupby(valor_unitario)[qtde].mean()
SELECT * FROM tb_entrada_produto;
SELECT valor_unitario, AVG(qtde) FROM tb_entrada_produto GROUP BY 1;

-- Funções agregadoras: HAVING()
-- HAVING COUNT(*) > 2, faz um groupby(valor_unitario)
SELECT * FROM tb_estoque;
SELECT valor_unitario, COUNT(*) FROM tb_estoque GROUP BY 1 HAVING COUNT(*) > 2;


