-- Implicit Join Syntax
SELECT *
FROM orders o
JOIN customers c 
ON o.customer_id = c.customer_id; 


-- 02. Alternative Way to Write this Query
SELECT *
FROM orders o, customers c 
WHERE o.customer_id = c.customer_id; 
