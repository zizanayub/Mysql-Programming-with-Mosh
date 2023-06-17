-- Inner Joins 
-- 01. Introductory Query
SELECT *
FROM orders
JOIN customers
    ON orders.customer_id = customers.customer_id; 
    
    

-- 02. Make Introductory Query Clearer
SELECT order_id, first_name, last_name, customers.customer_id
FROM orders
JOIN customers
ON orders.customer_id = customers.customer_id
ORDER BY 1;  




-- 03. Ambiguous
SELECT customers.customer_id, order_id, first_name, last_name
FROM orders
JOIN customers
ON customers.customer_id = orders.customer_id
ORDER BY order_id; 



-- 04. Alias
SELECT c.customer_id, order_id, first_name, last_name
FROM orders o
JOIN customers c
ON c.customer_id = o.customer_id
ORDER BY order_id; 




-- 05. Show products which are ordered with quantity and unit price.
SELECT order_id, oi.product_id, quantity, oi.unit_price
FROM order_items oi
JOIN products p
ON oi.product_id = p.product_id
