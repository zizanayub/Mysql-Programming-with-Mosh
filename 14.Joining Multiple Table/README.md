### ▶️ 01. Find out Order info, Customer info and Status. 




```SQL
-- 01. Find out Order info, Customer info and Status.

USE sql_store; 
SELECT *
FROM orders o
JOIN customers c
ON o.customer_id = c.customer_id
JOIN order_statuses os
ON o.status = os.order_status_id; 
```






Result:





![image](https://github.com/zizanayub/Mysql-Programming-with-Mosh/assets/65456659/05a85320-c796-4925-91ff-b76149a31172)








### ▶️ 02. Find out the specific variables.





```SQL
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
```






Result:



10 rows returned. 


![image](https://github.com/zizanayub/Mysql-Programming-with-Mosh/assets/65456659/e4593f94-5771-4fc4-8106-0d17dd17eb4c)







### ✍️ Exercise.




Question: Find out the customers who completed payments.






```SQL
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
 ```
 
 




Result:



8 rows returned. 






![image](https://github.com/zizanayub/Mysql-Programming-with-Mosh/assets/65456659/95dca1e5-4299-4a9e-813a-c877e0cfb149)


