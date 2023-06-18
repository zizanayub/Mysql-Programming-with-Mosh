-- Joining across databases
SELECT *
FROM order_items oi
JOIN sql_inventory.products p 
ON oi.product_id = p.product_id; 




-- 02. If We Selected "sql_inventories" database. 
USE sql_inventory;

SELECT *
FROM sql_store.order_items oi 
JOIN products p 
ON oi.product_id = p.product_id; 
