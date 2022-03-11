SELECT * FROM orders;
SELECT * FROM order_details; 
SELECT * FROM products; 
SELECT * FROM customers;

-- 1. Obtenha uma tabela que contenha o id do pedido e o valor total do mesmo.

SELECT order_details.order_id, SUM((products.unit_price * order_details.quantity * order_details.discount)) + AVG(orders.freight)
AS valor_total
FROM order_details
INNER JOIN products ON order_details.product_id = products.product_id
INNER JOIN orders ON orders.order_id = order_details.order_id
GROUP BY 1;

-- 2. Obtenha uma lista dos 10 clientes que realizaram o maior número de pedidos, 
-- bem como o número de pedidos de cada, ordenados em ordem decrescente de nº de pedidos.

SELECT DISTINCT(customers.contact_name), order_details.quantity FROM customers
INNER JOIN orders ON customers.customer_id = orders.customer_id
INNER JOIN order_details ON orders.order_id = order_details.order_id
ORDER BY order_details.quantity DESC
LIMIT 10;

-- 3. Obtenha uma tabela que contenha o id e o valor total do pedido e o nome do cliente que o realizou.

SELECT orders.order_id, customers.contact_name, SUM((products.unit_price * order_details.quantity * (1 - order_details.discount))) + AVG(orders.freight) 
AS total_order_price
FROM orders
INNER JOIN customers ON orders.customer_id = customers.customer_id
INNER JOIN order_details ON orders.order_id = order_details.order_id
INNER JOIN products ON products.product_id = order_details.product_id
GROUP BY 1,2;

-- 4. Obtenha uma tabela que contenha o país do cliente e o valor da compra que ele realizou.

SELECT customers.country, SUM((products.unit_price * order_details.quantity * order_details.discount)) + AVG(orders.freight)
AS valor_total 
FROM customers
INNER JOIN orders ON customers.customer_id = orders.customer_id
INNER JOIN order_details ON orders.order_id = order_details.order_id
INNER JOIN products ON order_details.product_id = products.product_id
GROUP BY 1;

-- 5. Obtenha uma tabela que contenha uma lista dos países dos clientes e o valor total de compras 
-- realizadas em cada um dos países. Ordene a tabela, na order descrescente, considerando o valor total 
-- de compras realizadas por país.

SELECT customers.country, SUM((products.unit_price * order_details.quantity * order_details.discount)) + AVG(orders.freight)
AS valor_total 
FROM customers
INNER JOIN orders ON customers.customer_id = orders.customer_id
INNER JOIN order_details ON orders.order_id = order_details.order_id
INNER JOIN products ON order_details.product_id = products.product_id
GROUP BY 1
ORDER BY valor_total DESC;

-- 6. Obtenha uma tabela com o valor médio das vendas em cada mês (ordenados do mês com mais vendas 
-- para o mês com menos vendas).
-- Não tem coluna mês

SELECT orders.order_date, (SUM((products.unit_price * order_details.quantity * (1 - order_details.discount))) + AVG(orders.freight)) / COUNT(orders.order_id)
AS mean_order_price
FROM orders
INNER JOIN order_details ON orders.order_id = order_details.order_id
INNER JOIN products ON order_details.product_id = products.product_id
GROUP BY 1
ORDER BY mean_order_price DESC;



