-- 01. Outer joins between Customers, Orders and Shippers Columns.
SELECT
      c.customer_id,
      c.first_name,
      o.order_id,
      sh.shipper_id,
      sh.name "Shipper Name"
FROM customers c 
LEFT JOIN orders o
		ON c.customer_id = o.customer_id
JOIN shippers sh 
        ON o.shipper_id = sh.shipper_id
ORDER BY c.customer_id; 




-- 02. Outer joins between Customers, Orders and Shippers Columns.(Left Join instead of Join)
SELECT
      c.customer_id,
      c.first_name,
      o.order_id,
      sh.shipper_id,
      sh.name "Shipper Name"
FROM customers c 
LEFT JOIN orders o
		ON c.customer_id = o.customer_id
LEFT JOIN shippers sh 
        ON o.shipper_id = sh.shipper_id
ORDER BY c.customer_id; 



-- 03. Exercise.
SELECT 
      o.order_date,
      o.order_id,
      c.first_name,
      sh.name "Shipper Name",
      os.name "Order Status"
FROM orders o 
LEFT JOIN customers c 
		ON o.customer_id = c.customer_id
LEFT JOIN shippers sh 
        ON o.shipper_id = sh.shipper_id 
LEFT JOIN order_statuses os 
        ON o.status = os.order_status_id; 
