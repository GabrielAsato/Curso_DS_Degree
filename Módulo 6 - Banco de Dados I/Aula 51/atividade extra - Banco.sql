-- DROP TABLE cadastro;
CREATE TABLE cadastro (
	num_cpf_cnpj bigint PRIMARY KEY
	,nome varchar(50) NOT NULL
	,genero char(1) NOT NULL 
	,profissao int NOT NULL
	,data_nascimento char(10) NOT NULL
	,estado int NOT NULL
	,produto varchar(20) NOT NULL
);

-- DROP TABLE atraso;
CREATE TABLE atraso (
	num_cpf_cnpj bigint PRIMARY KEY
	,referencia char(10) NOT NULL
	,dias_atraso int NOT NULL
);

-- DROP TABLE profissoes;
CREATE TABLE profissoes (
	codigo int PRIMARY KEY
	,profissao varchar(50) NOT NULL
);

-- DROP TABLE regioes;
CREATE TABLE regioes (
	codigo int PRIMARY KEY
	,uf char(2) NOT NULL
	,regiao varchar(20) NOT NULL
);

/* Inserção de dados */
-- tabela cadastro
INSERT INTO cadastro VALUES(588096199, 'Israel', 'F', 16, '1984-04-17', 6, 'consignado');
INSERT INTO cadastro VALUES(561840233, 'Jhenifer', 'F', 14, '2004-03-08', 16, 'crediario');
INSERT INTO cadastro VALUES(339893115, 'Italo', 'M', 9, '1992-04-21', 2, 'veiculo');
INSERT INTO cadastro VALUES(412132861, 'Paulo', 'F', 16, '1996-07-25', 18, 'imobiliario');
INSERT INTO cadastro VALUES(44674085, 'Renata', 'M', 16, '2003-07-09', 26, 'consignado');
INSERT INTO cadastro VALUES(510048767, 'Elielson', 'F', 6, '1985-03-11', 12, 'crediario');
INSERT INTO cadastro VALUES(203213436, 'Camila', 'M', 9, '1992-02-26', 8, 'crediario');
INSERT INTO cadastro VALUES(951831853, 'Maria', 'M', 10, '2008-11-22', 13, 'consignado');
INSERT INTO cadastro VALUES(329958370, 'Bruno', 'F', 3, '2000-09-06', 20, 'imobiliario');
INSERT INTO cadastro VALUES(362210418, 'Michele', 'F', 10, '2003-06-28', 5, 'consignado');
INSERT INTO cadastro VALUES(759744837, 'Rosani', 'F', 7, '1992-05-17', 13, 'crediario');
INSERT INTO cadastro VALUES(296710775, 'Amarildo', 'M', 19, '2001-05-18', 24, 'consignado');
INSERT INTO cadastro VALUES(994618263, 'Marlon', 'F', 16, '1994-10-12', 24, 'consignado');
INSERT INTO cadastro VALUES(107561259, 'Joaquim', 'F', 13, '2001-02-10', 20, 'veiculo');
INSERT INTO cadastro VALUES(298293547, 'Edison', 'F', 12, '1997-11-17', 24, 'consignado');
INSERT INTO cadastro VALUES(752184417, 'Hilton', 'F', 11, '1987-08-21', 23, 'imobiliario');
INSERT INTO cadastro VALUES(410995617, 'Gilson', 'M', 9, '1990-10-05', 17, 'imobiliario');
INSERT INTO cadastro VALUES(326491345, 'Michael', 'M', 5, '1993-10-31', 13, 'consignado');
INSERT INTO cadastro VALUES(420057060, 'Anderson', 'M', 2, '2002-12-16', 22, 'veiculo');
INSERT INTO cadastro VALUES(57195206, 'Manuel', 'F', 6, '1986-04-19', 26, 'crediario');
INSERT INTO cadastro VALUES(265760394, 'Isabel', 'F', 3, '1997-03-27', 25, 'veiculo');
INSERT INTO cadastro VALUES(616290634, 'Luzia', 'M', 12, '1999-02-19', 19, 'imobiliario');
INSERT INTO cadastro VALUES(822165516, 'Daiane', 'M', 10, '1992-05-02', 8, 'crediario');
INSERT INTO cadastro VALUES(138351383, 'Kelli', 'M', 7, '2005-06-28', 4, 'crediario');
INSERT INTO cadastro VALUES(336667255, 'Fernando', 'M', 6, '2009-04-05', 18, 'consignado');
INSERT INTO cadastro VALUES(928550534, 'Sara', 'F', 17, '2008-07-12', 27, 'veiculo');
INSERT INTO cadastro VALUES(915163742, 'Alcione', 'M', 6, '2000-04-29', 13, 'consignado');
INSERT INTO cadastro VALUES(502080362, 'Carlos', 'F', 2, '1997-09-22', 15, 'veiculo');
INSERT INTO cadastro VALUES(720903056, 'Elza', 'F', 16, '1988-01-13', 12, 'consignado');
INSERT INTO cadastro VALUES(394412387, 'Divina', 'M', 3, '1985-11-14', 20, 'consignado');
INSERT INTO cadastro VALUES(418718283, 'Santa', 'M', 10, '2008-09-26', 15, 'crediario');
INSERT INTO cadastro VALUES(851132756, 'Davi', 'F', 11, '2000-04-25', 23, 'veiculo');
INSERT INTO cadastro VALUES(151568415, 'David', 'M', 5, '2006-08-12', 11, 'imobiliario');
INSERT INTO cadastro VALUES(813438876, 'Izaltina', 'M', 8, '1988-10-09', 6, 'crediario');
INSERT INTO cadastro VALUES(260547215, 'Vagner', 'M', 1, '2003-02-01', 19, 'imobiliario');
INSERT INTO cadastro VALUES(604343837, 'Marcel', 'F', 11, '1984-11-24', 6, 'imobiliario');
INSERT INTO cadastro VALUES(339129552, 'Marta', 'M', 18, '1990-12-30', 26, 'crediario');
INSERT INTO cadastro VALUES(649890681, 'Brenda', 'F', 1, '1989-11-16', 3, 'veiculo');
INSERT INTO cadastro VALUES(824277903, 'Valdeci', 'M', 19, '2008-12-16', 27, 'consignado');
INSERT INTO cadastro VALUES(266670405, 'Edmeia', 'F', 1, '1985-03-13', 22, 'veiculo');
INSERT INTO cadastro VALUES(661148246, 'Kailane', 'M', 10, '1993-09-19', 3, 'crediario');
INSERT INTO cadastro VALUES(820946838, 'Lucas', 'M', 1, '2008-05-14', 7, 'consignado');
INSERT INTO cadastro VALUES(828449803, 'Alexandra', 'M', 9, '2001-08-24', 25, 'imobiliario');
INSERT INTO cadastro VALUES(674799211, 'Geovane', 'M', 10, '1983-08-31', 24, 'consignado');
INSERT INTO cadastro VALUES(972487731, 'Jurandir', 'M', 17, '1996-01-19', 25, 'crediario');
INSERT INTO cadastro VALUES(974809140, 'Edjane', 'F', 14, '2000-10-24', 7, 'consignado');
INSERT INTO cadastro VALUES(224370600, 'Heberth', 'M', 9, '1999-12-25', 8, 'consignado');
INSERT INTO cadastro VALUES(5417156, 'Michely', 'M', 15, '2006-03-15', 11, 'veiculo');
INSERT INTO cadastro VALUES(124184037, 'Elielson', 'F', 12, '1995-01-22', 7, 'veiculo');
INSERT INTO cadastro VALUES(52561672, 'Manuel', 'M', 12, '1994-09-20', 26, 'crediario');
INSERT INTO cadastro VALUES(306107151, 'Genivaldo', 'F', 15, '1992-12-07', 8, 'imobiliario');
INSERT INTO cadastro VALUES(804471255, 'Jao', 'F', 11, '1984-02-16', 27, 'crediario');
INSERT INTO cadastro VALUES(452751283, 'Saionara', 'F', 18, '2004-09-12', 17, 'consignado');
INSERT INTO cadastro VALUES(609672757, 'Lusinete', 'F', 8, '1993-09-21', 10, 'imobiliario');
INSERT INTO cadastro VALUES(453043172, 'Fatima', 'M', 10, '2004-04-27', 21, 'veiculo');
INSERT INTO cadastro VALUES(761694019, 'Marcelo', 'M', 19, '2005-07-04', 15, 'consignado');
INSERT INTO cadastro VALUES(125228398, 'Claudete', 'M', 17, '1990-12-24', 6, 'imobiliario');
INSERT INTO cadastro VALUES(921125945, 'Max', 'M', 2, '1988-10-13', 26, 'imobiliario');
INSERT INTO cadastro VALUES(802006815, 'Luane', 'F', 4, '1986-12-19', 21, 'consignado');
INSERT INTO cadastro VALUES(716511837, 'Rogerio', 'M', 13, '1999-05-09', 5, 'imobiliario');
INSERT INTO cadastro VALUES(335883575, 'Lazaro', 'F', 17, '1990-04-10', 23, 'veiculo');
INSERT INTO cadastro VALUES(396655961, 'Lilian', 'M', 15, '1982-05-22', 18, 'veiculo');
INSERT INTO cadastro VALUES(397731293, 'Ricardo', 'M', 7, '1992-10-30', 8, 'crediario');
INSERT INTO cadastro VALUES(822447990, 'Josafa', 'M', 1, '1994-06-22', 5, 'consignado');
INSERT INTO cadastro VALUES(931356381, 'Luzinete', 'M', 12, '1990-07-21', 15, 'crediario');
INSERT INTO cadastro VALUES(307176601, 'Zelia', 'M', 12, '1989-10-02', 8, 'veiculo');
INSERT INTO cadastro VALUES(619236092, 'Leila', 'F', 16, '1994-12-12', 5, 'crediario');
INSERT INTO cadastro VALUES(153385457, 'Jeane', 'F', 14, '1985-05-17', 26, 'crediario');
INSERT INTO cadastro VALUES(590173846, 'David', 'F', 3, '2001-07-04', 21, 'imobiliario');
INSERT INTO cadastro VALUES(330092215, 'Ramon', 'F', 18, '2008-03-11', 17, 'consignado');
INSERT INTO cadastro VALUES(94021403, 'Adriele', 'M', 2, '1990-08-07', 1, 'imobiliario');
INSERT INTO cadastro VALUES(785315988, 'Dijalma', 'M', 2, '2008-05-03', 18, 'veiculo');
INSERT INTO cadastro VALUES(525281005, 'Edvando', 'F', 12, '1984-06-17', 8, 'consignado');
INSERT INTO cadastro VALUES(756165467, 'Laercio', 'M', 5, '2003-03-23', 9, 'consignado');
INSERT INTO cadastro VALUES(224569454, 'Luiza', 'M', 14, '1983-02-12', 27, 'crediario');
INSERT INTO cadastro VALUES(23365577, 'Rosinaldo', 'M', 9, '1983-05-13', 17, 'consignado');
INSERT INTO cadastro VALUES(124277644, 'Manoel', 'F', 11, '1990-01-16', 4, 'consignado');
INSERT INTO cadastro VALUES(445828960, 'Lisandra', 'F', 18, '2004-09-09', 13, 'consignado');
INSERT INTO cadastro VALUES(267215804, 'Irene', 'M', 15, '1991-08-17', 21, 'crediario');
INSERT INTO cadastro VALUES(757148751, 'Gabriela', 'M', 5, '1992-05-12', 11, 'consignado');
INSERT INTO cadastro VALUES(80961423, 'Rafael', 'F', 1, '2009-03-23', 16, 'imobiliario');
INSERT INTO cadastro VALUES(55203009, 'Henrique', 'M', 13, '1992-11-30', 8, 'veiculo');
INSERT INTO cadastro VALUES(386984010, 'Dirce', 'F', 5, '1989-01-05', 11, 'veiculo');
INSERT INTO cadastro VALUES(252129021, 'Henrique', 'F', 7, '1999-03-20', 16, 'crediario');
INSERT INTO cadastro VALUES(463435642, 'Olivia', 'F', 16, '1998-08-21', 14, 'consignado');
INSERT INTO cadastro VALUES(34977697, 'Inacio', 'F', 16, '2006-10-19', 11, 'imobiliario');
INSERT INTO cadastro VALUES(361127876, 'Robson', 'M', 4, '1984-12-19', 12, 'consignado');
INSERT INTO cadastro VALUES(439187648, 'Oscar', 'F', 18, '1990-02-26', 16, 'crediario');
INSERT INTO cadastro VALUES(371949527, 'Geovane', 'M', 14, '1997-06-11', 13, 'imobiliario');
INSERT INTO cadastro VALUES(478622165, 'Margarida', 'M', 4, '2007-05-27', 21, 'imobiliario');
INSERT INTO cadastro VALUES(110029350, 'Gean', 'M', 18, '1983-06-14', 10, 'veiculo');
INSERT INTO cadastro VALUES(803642571, 'Madalena', 'F', 18, '1983-08-24', 26, 'veiculo');
INSERT INTO cadastro VALUES(908434204, 'Fabricio', 'M', 5, '1988-01-28', 6, 'imobiliario');
INSERT INTO cadastro VALUES(220983060, 'Rivaldo', 'F', 19, '2007-05-23', 5, 'veiculo');
INSERT INTO cadastro VALUES(593960509, 'Ryan', 'F', 17, '1992-02-14', 21, 'veiculo');
INSERT INTO cadastro VALUES(266060205, 'Mauro', 'F', 14, '1990-12-12', 8, 'consignado');
INSERT INTO cadastro VALUES(990099081, 'Manoel', 'M', 4, '1999-11-15', 25, 'crediario');
INSERT INTO cadastro VALUES(824095516, 'Aguinaldo', 'F', 15, '1993-08-04', 3, 'veiculo');
INSERT INTO cadastro VALUES(310020930, 'Herlan', 'M', 8, '2006-04-08', 3, 'veiculo');
INSERT INTO cadastro VALUES(152901946, 'Adriana', 'F', 5, '1993-07-05', 21, 'veiculo');
INSERT INTO cadastro VALUES(854376637, 'Daiana', 'M', 4, '2001-02-21', 14, 'veiculo');
INSERT INTO cadastro VALUES(657561754, 'Manuel', 'M', 5, '1992-01-17', 17, 'consignado');
INSERT INTO cadastro VALUES(69772418, 'Pablo', 'F', 15, '1999-10-15', 24, 'crediario');
INSERT INTO cadastro VALUES(315067964, 'Andreia', 'F', 6, '2001-11-21', 21, 'consignado');
INSERT INTO cadastro VALUES(686430348, 'Eva', 'M', 11, '1999-02-27', 17, 'imobiliario');
INSERT INTO cadastro VALUES(277798121, 'Soraia', 'F', 10, '1993-08-15', 15, 'veiculo');
INSERT INTO cadastro VALUES(621591776, 'Sebastiao', 'M', 18, '1984-06-01', 17, 'imobiliario');
INSERT INTO cadastro VALUES(717648016, 'Josr', 'M', 18, '2001-12-09', 18, 'veiculo');
INSERT INTO cadastro VALUES(125693593, 'Angelo', 'F', 9, '2007-07-30', 20, 'imobiliario');
INSERT INTO cadastro VALUES(805556917, 'Josenildo', 'M', 18, '1998-11-23', 22, 'consignado');
INSERT INTO cadastro VALUES(291786561, 'Bruna', 'F', 19, '1986-01-30', 21, 'crediario');
INSERT INTO cadastro VALUES(594174207, 'Celio', 'M', 7, '1993-05-04', 7, 'imobiliario');
INSERT INTO cadastro VALUES(232768666, 'Renato', 'M', 12, '1987-08-07', 19, 'consignado');
INSERT INTO cadastro VALUES(832782796, 'Maila', 'F', 15, '1987-08-24', 6, 'veiculo');
INSERT INTO cadastro VALUES(326616096, 'Daiane', 'M', 8, '2002-05-15', 6, 'veiculo');
INSERT INTO cadastro VALUES(509106589, 'Kaua', 'F', 4, '1993-10-10', 6, 'crediario');
INSERT INTO cadastro VALUES(434615909, 'Luzia', 'F', 5, '1998-09-04', 9, 'crediario');
INSERT INTO cadastro VALUES(782762107, 'Cesar', 'M', 14, '1999-08-03', 13, 'imobiliario');
INSERT INTO cadastro VALUES(446483388, 'Simone', 'M', 4, '2000-06-27', 22, 'crediario');
INSERT INTO cadastro VALUES(325748742, 'Omar', 'M', 2, '1993-05-03', 15, 'crediario');

-- tabela atraso
INSERT INTO atraso VALUES(339893115, '24/02/2020', 0);
INSERT INTO atraso VALUES(412132861, '13/04/2020', 152);
INSERT INTO atraso VALUES(951831853, '04/09/2020', 96);
INSERT INTO atraso VALUES(298293547, '21/10/2020', 0);
INSERT INTO atraso VALUES(326491345, '26/06/2020', 0);
INSERT INTO atraso VALUES(420057060, '13/06/2020', 0);
INSERT INTO atraso VALUES(616290634, '13/06/2020', 0);
INSERT INTO atraso VALUES(138351383, '03/08/2020', 0);
INSERT INTO atraso VALUES(336667255, '02/09/2020', 136);
INSERT INTO atraso VALUES(502080362, '13/03/2020', 173);
INSERT INTO atraso VALUES(649890681, '18/12/2020', 34);
INSERT INTO atraso VALUES(828449803, '18/11/2020', 140);
INSERT INTO atraso VALUES(974809140, '19/04/2020', 128);
INSERT INTO atraso VALUES(5417156, '22/09/2020', 41);
INSERT INTO atraso VALUES(804471255, '09/09/2020', 146);
INSERT INTO atraso VALUES(453043172, '27/05/2020', 0);
INSERT INTO atraso VALUES(125228398, '23/05/2020', 125);
INSERT INTO atraso VALUES(931356381, '01/03/2020', 0);
INSERT INTO atraso VALUES(307176601, '16/08/2020', 0);
INSERT INTO atraso VALUES(266060205, '21/04/2020', 0);
INSERT INTO atraso VALUES(990099081, '24/12/2020', 14);
INSERT INTO atraso VALUES(657561754, '21/04/2020', 36);
INSERT INTO atraso VALUES(69772418, '02/12/2020', 0);
INSERT INTO atraso VALUES(277798121, '05/06/2020', 23);
INSERT INTO atraso VALUES(621591776, '09/02/2020', 0);
INSERT INTO atraso VALUES(717648016, '16/09/2020', 86);
INSERT INTO atraso VALUES(594174207, '11/03/2020', 0);
INSERT INTO atraso VALUES(326616096, '30/10/2020', 41);
INSERT INTO atraso VALUES(509106589, '29/07/2020', 0);
INSERT INTO atraso VALUES(434615909, '09/11/2020', 0);
INSERT INTO atraso VALUES(446483388, '30/01/2020', 0);

-- tabela profissoes
INSERT INTO profissoes VALUES(1, 'Enfermeiro');
INSERT INTO profissoes VALUES(2, 'Designer de Interiores');
INSERT INTO profissoes VALUES(3, 'Administrador');
INSERT INTO profissoes VALUES(4, 'Arquiteturo');
INSERT INTO profissoes VALUES(5, 'Advogado');
INSERT INTO profissoes VALUES(6, 'Economia');
INSERT INTO profissoes VALUES(7, 'Jornalista');
INSERT INTO profissoes VALUES(8, 'Cientista da Dados');
INSERT INTO profissoes VALUES(9, 'Medico');
INSERT INTO profissoes VALUES(10, 'Sociologo');
INSERT INTO profissoes VALUES(11, 'Engenheiro');
INSERT INTO profissoes VALUES(12, 'Cientista da Computacao');
INSERT INTO profissoes VALUES(13, 'Estatístico');
INSERT INTO profissoes VALUES(14, 'Fisico');
INSERT INTO profissoes VALUES(15, 'Geofisico');
INSERT INTO profissoes VALUES(16, 'Geólogo');
INSERT INTO profissoes VALUES(17, 'Matemático');
INSERT INTO profissoes VALUES(18, 'Meteorologista');
INSERT INTO profissoes VALUES(19, 'Quimico');

-- tabela regioes
INSERT INTO regioes VALUES(1, 'RO', 'Norte');
INSERT INTO regioes VALUES(2, 'AC', 'Norte');
INSERT INTO regioes VALUES(3, 'AM', 'Norte');
INSERT INTO regioes VALUES(4, 'RR', 'Norte');
INSERT INTO regioes VALUES(5, 'PA', 'Norte');
INSERT INTO regioes VALUES(6, 'AP', 'Norte');
INSERT INTO regioes VALUES(7, 'TO', 'Norte');
INSERT INTO regioes VALUES(8, 'MA', 'Nordeste');
INSERT INTO regioes VALUES(9, 'PI', 'Nordeste');
INSERT INTO regioes VALUES(10, 'CE', 'Nordeste');
INSERT INTO regioes VALUES(11, 'RN', 'Nordeste');
INSERT INTO regioes VALUES(12, 'PB', 'Nordeste');
INSERT INTO regioes VALUES(13, 'PE', 'Nordeste');
INSERT INTO regioes VALUES(14, 'AL', 'Nordeste');
INSERT INTO regioes VALUES(15, 'SE', 'Nordeste');
INSERT INTO regioes VALUES(16, 'BA', 'Nordeste');
INSERT INTO regioes VALUES(17, 'MG', 'Sudeste');
INSERT INTO regioes VALUES(18, 'ES', 'Sudeste');
INSERT INTO regioes VALUES(19, 'RJ', 'Sudeste');
INSERT INTO regioes VALUES(20, 'SP', 'Sudeste');
INSERT INTO regioes VALUES(21, 'PR', 'Sul');
INSERT INTO regioes VALUES(22, 'SC', 'Sul');
INSERT INTO regioes VALUES(23, 'RS', 'Sul');
INSERT INTO regioes VALUES(24, 'MS', 'Centro-Oeste');
INSERT INTO regioes VALUES(25, 'MT', 'Centro-Oeste');
INSERT INTO regioes VALUES(26, 'GO', 'Centro-Oeste');
INSERT INTO regioes VALUES(27, 'DF', 'Centro-Oeste');