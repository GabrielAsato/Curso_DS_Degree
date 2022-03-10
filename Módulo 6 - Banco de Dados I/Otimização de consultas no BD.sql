-- Otimização de Consultas no Banco de Dados

-- INNER JOIN
SELECT ord.order_id, cust.contact_name 
FROM orders AS ord INNER JOIN customers AS cust 
ON ord.customer_id = cust.customer_id;

-- LEFT JOIN
SELECT ord.order_id, cust.contact_name
FROM orders AS ord LEFT JOIN customers AS cust
ON ord.customer_id = cust.customer_id;

-- FULL JOIN
SELECT ord.order_id, cust.contact_name
FROM orders AS ord FULL JOIN customers AS cust
ON ord.customer_id = cust.customer_id;

-- UNION
SELECT city FROM customers
UNION
SELECT city FROM suppliers;

-- UNION ALL
SELECT city FROM customers
UNION ALL
SELECT city FROM suppliers;


-- STORE PROCEDURE
CREATE FUNCTION NomeContato(p_order_id integer) RETURNS varchar
LANGUAGE plpgsql
AS $$
DECLARE r_contato varchar(40);
BEGIN

	IF p_order_id IS null THEN 0
	END IF;
	
	SELECT cust.contact_name INTO r_contato FROM orders AS ord
	INNER JOIN customers AS cust ON ord.customer_id = cust.customer_id
	WHERE ord.order_id = p_order_id;
	
	IF NOT FOUND THEN
		RAISE EXCEPTION 'Não existe contato';
	END IF;
	RETURN r_contato;
END$$;

--Utilizar a função
SELECT NomeContato(10917);

CREATE FUNCTION juntaTexto(p_texto_um varchar(20), p_texto_dois varchar(20))
RETURNS varchar(40)
LANGUAGE sql IMMUTABLE
AS $$
SELECT CASE
	WHEN p_texto_dois IS null THEN p_texto_um
	WHEN p_texto_um IS null THEN p_texto_dois
	ELSE p_texto_um || '/' || p_texto_dois
END $$;

SELECT juntaTexto('Teste1', 'Teste2');

-- Função de quadrado do número
CREATE FUNCTION Square(p_numero int) RETURNS int
LANGUAGE plpgsql
AS $$
BEGIN
	RETURN p_numero * p_numero;
END $$;

SELECT Square(2);

-- Views (pseudo tabela)
CREATE VIEW vw_preco_medio_produtos
AS
SELECT DISTINCT product_name, unit_price
FROM products 
WHERE unit_price > (SELECT AVG(unit_price) FROM products)
ORDER BY unit_price;

SELECT product_name, unit_price FROM vw_preco_medio_produtos;

-- Criar uma tabela Fatura
CREATE VIEW fatura
AS
SELECT DISTINCT * FROM shippers AS ship
INNER JOIN orders AS ord ON ship.shipper_id = ord.ship_via
INNER JOIN customers AS cust ON ord.customer_id = cust.customer_id
INNER JOIN employees AS emp ON ord.employee_id = emp.employee_id
INNER JOIN order_details AS ordd ON ord.order_id = ordd.order_id
INNER JOIN products AS prod ON ordd.product_id = prod.product_id;