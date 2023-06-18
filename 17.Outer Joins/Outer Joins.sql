-- Outer Joins
-- How Inner Join works?

SELECT
      c.customer_id,
      c.first_name,
      o.order_id
FROM orders o
JOIN customers c 
     ON o.customer_id = c.customer_id
ORDER BY c.customer_id; 




-- Left Outer Joins
SELECT 
      c.customer_id,
      c.first_name,
      o.order_id
FROM customers c
LEFT JOIN orders o 
         ON c.customer_id = o.customer_id
ORDER BY c.customer_id; 



-- 03. Outer Joins (Right Join)
SELECT 
      c.customer_id,
      c.first_name,
      o.order_id
FROM customers c
RIGHT JOIN orders o 
         ON c.customer_id = o.customer_id
ORDER BY c.customer_id; 




-- 04. If We SWAP the columns.
SELECT 
      c.customer_id,
      c.first_name,
      o.order_id
FROM orders o 
RIGHT JOIN customers c 
          ON c.customer_id = o.customer_id
ORDER BY c.first_name; 




-- Exercise
SELECT 
      p.product_id,
      p.name,
      oi.quantity
FROM products p
LEFT JOIN order_items oi
         ON p.product_id = oi.product_id
ORDER BY p.product_id;
