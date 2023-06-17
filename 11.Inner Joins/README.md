### ▶️ 01. Introductory Query





```SQL
-- 01. Introductory Query
SELECT *
FROM orders
JOIN customers
    ON orders.customer_id = customers.customer_id; 
 ```
 
 
 
 Result:
 10 rows returned.
 
 
 
 
 ![image](https://github.com/zizanayub/Mysql-Programming-with-Mosh/assets/65456659/a0c4ed80-6606-49d9-b964-7bc3aeea5b53)






The information matched with customer_id from orders table will be shown after the query execution. 







### ▶️ 02. Make Introductory Query Clearer





```SQL
-- 02. Make Introductory Query Clearer
SELECT order_id, first_name, last_name, customers.customer_id
FROM orders
JOIN customers
ON orders.customer_id = customers.customer_id
ORDER BY 1;  
```




This query will return the order_id, name of the customer and his/her id. This has been executed whenever customer_id from both sides have been matched. 







### 💡 03. Ambiguous Column



1. Suppose, `Customer_id` has been added to the SELECT statement. But the query didn't execute and gave wrong.
2. Reason is, `Customer_id` column were in two both tables. `Orders` and `Customers`.
3. That's why, we need to specify, from which table, I am going to show the customer_id.
4. Otherwise, if there is no other common column between two tables, we can specify them without identifier. 




so, how we can specify?



```
-- 03. Ambiguous
SELECT customers.customer_id, order_id, first_name, last_name
FROM orders
JOIN customers
ON customers.customer_id = orders.customer_id
ORDER BY order_id; 
```




### 💡 04. Alias


For reducing complexities and redundencies in queries, we can use alias






```SQL
-- 04. Alias
SELECT c.customer_id, order_id, first_name, last_name
FROM orders o
JOIN customers c
ON c.customer_id = o.customer_id
ORDER BY order_id; 
```







Result:



![image](https://github.com/zizanayub/Mysql-Programming-with-Mosh/assets/65456659/2c925880-255a-471e-b7c0-7ef3c75a08bf)








### ✍️ 05. Exercise




Question: Show products which are ordered with quantity and unit price.




```SQL
-- 05. Show products which are ordered with quantity and unit price.
SELECT order_id, oi.product_id, quantity, oi.unit_price
FROM order_items oi
JOIN products p
ON oi.product_id = p.product_id
```





Result:





![image](https://github.com/zizanayub/Mysql-Programming-with-Mosh/assets/65456659/4df69cf3-2e04-422c-8d96-9edfccbf5610)









### 💡 06. Why you added "oi".unit_price, not "p".unit_price?


Because, the question was asked to find out the information about ordered products. So, we will find out the unit prices of those products which has been ordered. 
