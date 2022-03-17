/*********************************************************/
/*********************************************************/
/******												******/
/******		1. Vamos verificar qual produto			******/
/******		é o mais 'popular' no nosso banco.		******/
/******		Para isso, vamos levantar a 			******/
/******		volumetria de aparições					******/
/******												******/
/*********************************************************/
/*********************************************************/

--Produto está em cadastro
SELECT * FROM cadastro;
SELECT produto, COUNT(produto) AS qtde FROM cadastro
GROUP BY 1
ORDER BY 1;

/*********************************************************/
/*********************************************************/
/******												******/
/******		2. Vamos calcular a média de dias de	******/
/******		atraso para cada mês de referência 		******/
/******		presente nestas tabelas.	 			******/
/******												******/
/*********************************************************/
/*********************************************************/

-- 	Em atraso, manipular a data de nascimento
SELECT * FROM atraso;
SELECT to_char(CAST(referencia AS date),'YYYY') ||
	to_char(CAST(referencia AS date),'MM'),
	round(AVG(dias_atraso),2) AS media_atraso FROM atraso
GROUP BY 1
ORDER BY 1;

/*********************************************************/
/*********************************************************/
/******												******/
/******		3. Podemos calcular a bad rate  		******/
/******		para cada produto desta empresa 		******/
/******												******/
/*********************************************************/
/*********************************************************/

-- Bad rate: 0 atraso = 0 e n atrasos = 1
SELECT A.produto, round(avg(CASE WHEN B.dias_atraso = 0 THEN 0
					 ELSE 1
					 END),2) AS bad_rate
FROM cadastro AS A
LEFT JOIN atraso AS B
ON A.num_cpf_cnpj = B.num_cpf_cnpj
GROUP BY 1;

/*********************************************************/
/*********************************************************/
/******												******/
/******		4. Podemos calcular a bad rate de 		******/
/******		cada profissao das pessoas.		 		******/
/******												******/
/*********************************************************/
/*********************************************************/

SELECT B.profissao, round(avg(CASE WHEN C.dias_atraso = 0 THEN 0
					 ELSE 1
					 END),2) AS bad_rate
FROM cadastro AS A
LEFT JOIN profissoes AS B
ON A.profissao = B.codigo
LEFT JOIN atraso AS C
ON A.num_cpf_cnpj = C.num_cpf_cnpj
GROUP BY 1
ORDER BY 2 DESC;

/*********************************************************/
/*********************************************************/
/******												******/
/******		5. Podemos calcular a bad rate também	******/
/******		por estado brasileiro.			 		******/
/******												******/
/*********************************************************/
/*********************************************************/

SELECT B.uf, round(avg(CASE WHEN C.dias_atraso = 0 THEN 0
					 ELSE 1
					 END),2) AS bad_rate
FROM cadastro AS A
LEFT JOIN regioes AS B
ON A.estado = B.codigo
LEFT JOIN atraso AS C
ON A.num_cpf_cnpj = C.num_cpf_cnpj
GROUP BY 1
ORDER BY 2;

/*********************************************************/
/*********************************************************/
/******												******/
/******		Em geral realizamos estas análises		******/
/******		por meio do python com o que chamamos	******/
/******		de cubo. Que seria basicamente um 		******/
/******		concatenado de todos os dados			******/
/******		necessários para as análises.			******/
/******												******/
/*********************************************************/
/*********************************************************/

select
	A.produto
	,B.regiao
	,C.profissao
	,to_char(cast(D.referencia as date), 'YYYY') || to_char(cast(D.referencia as date), 'MM') as anomes
	
	,sum(D.dias_atraso)
	,count(*) as qtd
	,sum(case when D.dias_atraso = 0 then 0	else 1	end) as soma_bad_rate
    ,round(avg(case when D.dias_atraso = 0 then 0	else 1	end), 2) as bad_rate

from cadastro as A
left join regioes as B
on A.estado = B.codigo

left join profissoes as C
on A.profissao = C.codigo

left join atraso as D
on A.num_cpf_cnpj = D.num_cpf_cnpj
group by 1, 2, 3, 4;


