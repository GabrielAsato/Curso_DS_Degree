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