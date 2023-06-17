### ❓ 01.Why `ORDER BY`?


To sort data in the table following conditions. 


### ❓ 02. Why customer_id is sorted in default?

Because, customer_id column is a primary key column. They uniquely identify the customers.



### ▶️ 03. Order By First Names.




```SQL
-- Order by first names
SELECT *
FROM customers
ORDER BY first_name; 
```




Result:




![image](https://github.com/zizanayub/Mysql-Programming-with-Mosh/assets/65456659/55182803-1a30-48e1-a87d-5922e8f6988c)





The query have sorted the first names alphabatically.







### ▶️ 04. Order By First Names Discending Order.



```SQL
-- 02. Order by first names discending order
SELECT *
FROM customers
ORDER BY first_name DESC; 
```





Result: 



![image](https://github.com/zizanayub/Mysql-Programming-with-Mosh/assets/65456659/07011c3f-8405-4ea9-b2c2-9cc846c24ff7)







### ▶️ 05. Order By State and Customer's First Name.





```
-- 03. Order By State and Customer's First Name.
SELECT *
FROM customers
ORDER BY state, first_name; 
```




Result:


![image](https://github.com/zizanayub/Mysql-Programming-with-Mosh/assets/65456659/031de1b6-5f14-49ec-9c9b-964c855d22ab)






### 💡 06. How Order By Multiple Variables Work?


In the above query, first it will sort the customers according to the state codes alphabatically. If any state have more than 1 customers, they will be sorted alphabatically then. 








### ▶️ 07. Same Query with Discending Order.



```SQL
-- 04. Same query with discending order.
SELECT *
FROM customers 
ORDER BY state DESC, first_name DESC; 
```




Result: 





![image](https://github.com/zizanayub/Mysql-Programming-with-Mosh/assets/65456659/f84999a5-ca9c-486e-ab7e-f90fc7e9fd33)







### ▶️ 08. Order by Birth Dates.



```SQL
-- 05. Order by Birth Dates.
SELECT first_name, last_name, birth_date
FROM customers
ORDER BY birth_date;
```





Result: 




![image](https://github.com/zizanayub/Mysql-Programming-with-Mosh/assets/65456659/2022efc9-d4d7-4347-befa-aa52ddc1ea71)








### ▶️ 09. Find Out Most Loyal Customers.




```SQL
-- 06. Find Out Most Loyal Customers. 
SELECT first_name, last_name, points
FROM customers
ORDER BY points DESC, first_name; 
```





Result:





![image](https://github.com/zizanayub/Mysql-Programming-with-Mosh/assets/65456659/7a8e0005-8ba3-45c3-88b6-35ac082948fc)








### 💡 10. Default 10 As Points. 


```SQL
-- 07. Show customers ordered by first name where 10 is default point value 
SELECT first_name, last_name, 10 AS points
FROM customers
ORDER BY points DESC, first_name; 
```



Now, points column will not work. It will be sorted according to first_name now. 







### ▶️ 11. Use 1,2 to reduce complexity and time.




```SQL
-- 08. Use 1,2 to reduce complexity and time.
SELECT customer_id, first_name, last_name
FROM customers
ORDER BY 2,3;
```




Result:



![image](https://github.com/zizanayub/Mysql-Programming-with-Mosh/assets/65456659/c1963bb8-65a0-4e36-b9a9-f2c51ce9ed15)




- Mr. Mosh advised to avoid this while querying. 







### ✍️ 12. Exercise-01


Question: Sort orders by total price where order id is 2 and this should be in discending order.



```SQL
-- 09. Exercise-01
SELECT *
FROM order_items
WHERE order_id = 2
ORDER BY quantity * unit_price DESC; 
```



Result: 
3 rows returned.





![image](https://github.com/zizanayub/Mysql-Programming-with-Mosh/assets/65456659/1ad3828e-69f2-442c-ad7c-198821e54c4c)







### ✍️ 12. Exercise-02



Question: Additionally show total price column.




```SQL
-- 09. Exercise-01. Now show total price

SELECT *,quantity * unit_price Total_Price
FROM order_items
WHERE order_id = 2
ORDER BY 2; 
```





Result:
3 rows returned.



![image](https://github.com/zizanayub/Mysql-Programming-with-Mosh/assets/65456659/d0187df0-bc6e-4e20-86bc-4348968be52c)
