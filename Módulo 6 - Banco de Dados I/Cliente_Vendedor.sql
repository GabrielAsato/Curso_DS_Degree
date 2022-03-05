--
CREATE TABLE cliente(
	cod_cli int NOT null,
	nome_cli varchar(40) NOT null,
	endereco varchar(40) null,
	cidade varchar(20) null,
	cep char(8) null,
	uf char(2) null
);

CREATE TABLE vendedor(
	cod_vend int NOT null,
	nome_vend varchar(40) NOT null,
	sal_fixo numeric(9,2) NOT null,
	faixa_comiss numeric(6,2) NOT null
);

CREATE TABLE pedido(
	num_ped int NOT null,
	prazo_entr time NOT null,
	cod_cli int NOT null,
	cod_vend int NOT null
);

CREATE TABLE item_pedido(
	num_ped int NOT null,
	cod_prod int NOT null,
	qtd_ped int NOT null
);

CREATE TABLE produto(
	cod_prod int NOT null,
	unid_prod int NOT null,
	desc_prod varchar(40) null,
	val_unit numeric(5,2) NOT null
);

-- Caso queira adicionar mais uma coluna (atributo)
-- ALTER TABLE cliente ADD COLUMN idade TYPE int null;

-- Caso queira alterar um atributo
-- ALTER TABLE cliente ALTER COLUMN cep TYPE char(10);

-- Adicionar PRIMARY KEY
-- cliente -> cod_cli
ALTER TABLE cliente ADD PRIMARY KEY (cod_cli);
-- vendedor -> cod_vend
ALTER TABLE vendedor ADD PRIMARY KEY (cod_vend);
-- pedido -> num_ped
ALTER TABLE pedido ADD PRIMARY KEY (num_ped);
-- produto -> cod_prod
ALTER TABLE produto ADD PRIMARY KEY (cod_prod);

-- Adicionar FOREIGN KEY (PRIMARY KEY de outras tabelas)
-- ALTER TABLE <table1> ADD FOREIGN KEY (<FK>) REFERENCES <table2>(<PK>);
-- pedido -> cod_cli e cod_vend
ALTER TABLE pedido ADD FOREIGN KEY (cod_cli) REFERENCES cliente(cod_cli);
ALTER TABLE pedido ADD FOREIGN KEY (cod_vend) REFERENCES vendedor(cod_vend);
-- item_pedido -> num_ped e cod_prod
ALTER TABLE item_pedido ADD FOREIGN KEY (num_ped) REFERENCES pedido(num_ped);
ALTER TABLE item_pedido ADD FOREIGN KEY (cod_prod) REFERENCES produto(cod_prod);

-- Exercícios do Class
-- 1) Inserir dados nas tabelas existentes(No mínimo 5 registros);
-- Para adicionar dados:
-- INSERT INTO <table>(col1, col2, col3)
-- VALUES (data1, data2, data3);

-- Dados em clientes
INSERT INTO cliente(cod_cli, nome_cli, endereco, cidade, cep, uf)
VALUES (1, 'Joao', 'Rua Joao Moura 541', 'Sao Paulo', '11111111', 'SP');
INSERT INTO cliente
VALUES (2, 'Maria', 'Alameda Itu 1529', 'Sao Paulo', '22222222', 'SP');
INSERT INTO cliente
VALUES (3, 'Jose', 'Rua Cristiano Viana 358', 'Sao Paulo', '33333333', 'SP');
INSERT INTO cliente
VALUES (4, 'Ana', 'Rua Thomaz Gonzaga 57', 'Sao Paulo', '44444444', 'SP');
INSERT INTO cliente
VALUES (5, 'Carlos', 'Avenida Paulista 2073', 'Sao Paulo', '55555555', 'SP');

-- Dados em vendedor
INSERT INTO vendedor(cod_vend, nome_vend, sal_fixo, faixa_comiss)
VALUES (1000, 'Mario', 4000, 400);
INSERT INTO vendedor
VALUES (1001, 'Fabiana', 5000, 600);
INSERT INTO vendedor
VALUES (1002, 'Antonia', 8000, 760);
INSERT INTO vendedor
VALUES (1003, 'Mauricio', 4500, 350);
INSERT INTO vendedor
VALUES (1004, 'Henrique', 6000, 400);

-- Dados em pedido
INSERT INTO pedido(num_ped, prazo_entr, cod_cli, cod_vend)
VALUES (100, '00:30:00', 2, 1000);
INSERT INTO pedido
VALUES (101, '00:35:00', 2, 1001);
INSERT INTO pedido
VALUES (102, '00:20:00', 3, 1000);
INSERT INTO pedido
VALUES (103, '00:25:00', 5, 1002);
INSERT INTO pedido
VALUES (104, '00:30:00', 4, 1003);

-- Dados em item_pedido
INSERT INTO item_pedido(num_ped, cod_prod, qtd_ped)
VALUES (101, 1, 2);
INSERT INTO item_pedido
VALUES (103, 2, 3);
INSERT INTO item_pedido
VALUES (104, 1, 4);
INSERT INTO item_pedido
VALUES (100, 4, 1);
INSERT INTO item_pedido
VALUES (100, 3, 6);

-- Todas as informações de item_pedido
SELECT * FROM item_pedido;

-- Dados em produto
INSERT INTO produto(cod_prod, unid_prod, desc_prod, val_unit)
VALUES (1, 100, 'relógio', 150);
INSERT INTO produto
VALUES (2, 200, 'vaso', 50);
INSERT INTO produto
VALUES (3, 340, 'livro', 45);
INSERT INTO produto
VALUES (4, 265, 'Fone', 400);
INSERT INTO produto
VALUES (5, 45, 'TV', 900);

-- 2) Buscar todas as informações de pedidos;
SELECT * FROM pedido;
-- 3) Buscar todas as informações de produtos;
SELECT * FROM produto;
-- 4) Buscar todas as informações de clientes;
SELECT * FROM cliente;
-- 5) Buscar todas as informações de vendedores;
SELECT * FROM vendedor;

