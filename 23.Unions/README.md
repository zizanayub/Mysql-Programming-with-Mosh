### 💡 01. What is UNION?

UNION basically comines rows with multiple tables.
OR, Combines data from multiple queries. 




### ▶️ 02. Find out the orders in current year and define status as "Active" and "Archived"



```
-- Unions
-- 01. Orders in current year and define status as "Active"

SELECT 
	 order_id,
     order_date,
     "Active" AS "Status"
FROM orders
WHERE order_date >= '2019-01-01'
UNION
SELECT 
      order_id,
      order_date,
      "Archived" AS "Status"
FROM orders
WHERE order_date < '2019-01-01';
```




Result:


10 rows returned.


![image](https://github.com/zizanayub/Mysql-Programming-with-Mosh/assets/65456659/f91dc7fc-4449-44e4-9ca9-1cd70ff00c7d)







### 💡 03. Column numbers should be equal in UNION



```SQL
-- 03. Column numbers should be equal in UNION
SELECT 
      first_name,
      last_name
FROM customers
UNION
SELECT name
FROM shippers; 
```



Error:

Error Code: 1222. The used SELECT statements have a different number of columns





### 💡 04. Solution of the previous problem

```SQL
-- 04. Solution of the previous problem
SELECT 
	  first_name
FROM customers
UNION
SELECT name
FROM shippers; 
```


The output column will be named as the first table column name. Here, which is "First_name"! 





### ✍️ 05. Select customer ID, their first names, points, type (If points < 2000, the type is bronze, 2000-3000=Silver, >3000=Gold)


```SQL
-- 05. Exercise
SELECT
      customer_id,
      first_name,
      points,
      "Bronze" AS Customer_Type
FROM customers
WHERE points < 2000
UNION
SELECT
      customer_id,
      first_name,
      points,
      "Silver" AS Customer_Type
FROM customers
WHERE points BETWEEN 2000 AND 3000
UNION
SELECT
      customer_id,
      first_name,
      points,
      "Gold" AS Customer_Type
FROM customers
WHERE points > 3000
ORDER BY points;
```



Result:
10 rows returned.


![image](https://github.com/zizanayub/Mysql-Programming-with-Mosh/assets/65456659/c9401493-a973-4567-8301-4f6ae73bfd8e)
