### ▶️ 01. Outer joins between Customers, Orders and Shippers Columns.


```SQL
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
```



Result:


![image](https://github.com/zizanayub/Mysql-Programming-with-Mosh/assets/65456659/3b2adc32-57cc-4e13-a3d1-e67e642e05da)




5 rows returned. 





1. First we used `LEFT JOIN`. So, all of the customers' ID had been returned with order_ids. Some of the order_ids were null.
2. After that, we used `JOIN` by shipper_id. Where shipper_ids in both sides are common, those rows were returned. So, here 5 rows we found the shipper_ids were common.





### ▶️ 02. Outer joins between Customers, Orders and Shippers Columns. (`LEFT JOIN` instead of `JOIN`)




```SQL
-- 01. Outer joins between Customers, Orders and Shippers Columns.(Left Join instead of Join)
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
```




Result:



![image](https://github.com/zizanayub/Mysql-Programming-with-Mosh/assets/65456659/089cf4ff-d1e4-4ed7-9029-b7e93a9ae029)


14 rows returned.







### ✍️ 03. Exercise.

The answer should consist of order_date from orders, order_id from orders, first_name from customers, shipper name from shippers and order status from order statuses.




```SQL
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
```




Result:




![image](https://github.com/zizanayub/Mysql-Programming-with-Mosh/assets/65456659/86eadff9-9b78-4ac3-89fa-c63659b712db)


10 rows returned. 

