### 💡 01. What we did in Inner Join?


In Inner Join, customers who had the orders, the information of them went out after executing `Inner Join` operators.


```SQL
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
```



Result:



![image](https://github.com/zizanayub/Mysql-Programming-with-Mosh/assets/65456659/48085247-5c90-4f96-8da7-e06ae5557672)



10 rows returned.






### 💡 02. Outer Joins (Left Join)

But, we want the customers also who didn't place any order. Like, customer_id will be there, but order_id is null. 
There are 2 types of outer joins. 
1. Left Outer Joins/ Left Joins
2. Right Outer Joins/ Right Joins



```SQL
-- Left Outer Joins
SELECT 
      c.customer_id,
      c.first_name,
      o.order_id
FROM customers c
LEFT JOIN orders o 
         ON c.customer_id = o.customer_id
ORDER BY c.customer_id; 
```




Result:


![image](https://github.com/zizanayub/Mysql-Programming-with-Mosh/assets/65456659/7185fb6b-e23d-4c9e-9a68-d5fd2d047f57)


14 rows returned.





### 💡 03. Outer Joins (Right Join)


What if we add Right Join instead of Left Join?

All the order_ids will be shown.There will be no null in the order_id column. Under order_id, the customers' information will be shown.




```SQL
-- 03. Outer Joins (Right Join)
SELECT 
      c.customer_id,
      c.first_name,
      o.order_id
FROM customers c
RIGHT JOIN orders o 
         ON c.customer_id = o.customer_id
ORDER BY c.customer_id; 
```




Result:


![image](https://github.com/zizanayub/Mysql-Programming-with-Mosh/assets/65456659/1011bd1c-0ec2-4205-96de-4f197dc35822)


10 rows returned.









### ▶️ 04. If We SWAP the columns.





```SQL
-- 04. If We SWAP the columns.
SELECT 
      c.customer_id,
      c.first_name,
      o.order_id
FROM orders o 
RIGHT JOIN customers c 
          ON c.customer_id = o.customer_id
ORDER BY c.first_name; 
```




Result:



![image](https://github.com/zizanayub/Mysql-Programming-with-Mosh/assets/65456659/c224f6d8-bb29-48c7-9554-29489888707e)







### ✍️ 05. Exercise.

Show all product_ids, the product name and quantity if available, if not available, fill the cell null. 


```SQL
-- Exercise
SELECT 
      p.product_id,
      p.name,
      oi.quantity
FROM products p
LEFT JOIN order_items oi
         ON p.product_id = oi.product_id
ORDER BY p.product_id;
```




Result:



![image](https://github.com/zizanayub/Mysql-Programming-with-Mosh/assets/65456659/24dde8f0-e4c1-4082-9203-937f35718a0f)



DONE!!
