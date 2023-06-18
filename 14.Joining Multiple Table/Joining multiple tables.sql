-- Joining Multiple Tables
-- 01. Find out Order info, Customer info and Status.

USE sql_store; 
SELECT *
FROM orders o
JOIN customers c
ON o.customer_id = c.customer_id
JOIN order_statuses os
ON o.status = os.order_status_id; 





-- 02. Find out the specific variables.
SELECT 
      order_id,
      order_date,
      c.first_name,
      c.last_name,
      os.name Status
FROM orders o
JOIN customers c
     ON o.customer_id = c.customer_id
JOIN order_statuses os
     ON o.status = os.order_status_id; 
     
     



-- Find out the customers who completed payments.
USE sql_invoicing;


SELECT 
	  p.date "Payment Date",
      p.invoice_id,
      p.amount,
      c.name "Client Name",
      pm.name "Payment Method"
FROM payments p
JOIN clients c
	 ON p.client_id = c.client_id
JOIN payment_methods pm
     ON p.payment_method = pm.payment_method_id; 
