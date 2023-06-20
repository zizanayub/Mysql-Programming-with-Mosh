-- Natural Join 
USE sql_store;
SELECT 
      o.order_id,
      c.first_name
FROM customers c
NATURAL JOIN orders o
ORDER BY o.order_id; 
