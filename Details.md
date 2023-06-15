## 01. The `SELECT` Statement



### ▶️ 01. Select a Database in MySql

```SQL
USE sql_store;
```
The `sql_store` table will be bold. We can also select the database by only clicking the `sql_store` table. 




### ▶️ 02. Select All the Customers from `Customers` Table.

```SQL
SELECT *
FROM customers; 
```


Output: 




![image](https://github.com/zizanayub/Mysql-Programming-with-Mosh/assets/65456659/e3c779c0-d887-4e97-b828-2aee5bb267e6)








### ▶️ 03. Using `Where` Clause







```SQL
SELECT *
FROM customers 
WHERE customer_id = 1;
```



We will get information about `customer_id` = 1 only. 




![image](https://github.com/zizanayub/Mysql-Programming-with-Mosh/assets/65456659/4772f2bd-b505-4c95-800c-238a1dfd68ad)








### ▶️ 04. Using `Order By` Clause-01




```SQL
SELECT *
FROM customers
WHERE customer_id = 1
ORDER BY first_name; 
```




Result: 




![image](https://github.com/zizanayub/Mysql-Programming-with-Mosh/assets/65456659/1aa5662a-3084-4319-a750-d29aa66e5ad3)





It will give the same result as the `Where` clause was restricting the `ORDER BY` operation.









### ▶️ 05. Using `Order By` Clause-2




```SQL
SELECT *
FROM customers
ORDER BY first_name; 
```




Result:





![image](https://github.com/zizanayub/Mysql-Programming-with-Mosh/assets/65456659/754a77c4-0af3-4a5c-807c-cae6c3e89ca0)




Comment out or Remove the `WHERE` clause and now the `ORDER BY` will work. It will execute the code and output the rows ordered by `first_name` accordingly. 












## 02. The `WHERE` Clause



### ▶️ 01. `Where` Clause Example-01


```SQL
-- Select the customers whose points are more than 3000.

SELECT *
FROM customers
WHERE points > 3000; 

```


Result: 



![image](https://github.com/zizanayub/Mysql-Programming-with-Mosh/assets/65456659/89e5119b-0e6e-4453-8175-5ec35597ea24)







### ❓ 02. What are the operators used in SQL?

- >
- <
- >=
- <=
- =
- != / <>








### ▶️ 03. Finding Customers from Virginia State. (Equal Operator)



```SQL
-- Select the customers from Virginia. 

SELECT *
FROM customers
WHERE state = "VA";
```




Result: 





![image](https://github.com/zizanayub/Mysql-Programming-with-Mosh/assets/65456659/bc83b3dd-5be2-4152-9df0-c44a36840553)






### ▶️ 04. Finding Customers Not from Virginia State. (Not-equal Operator)




```SQL
-- Select the customers not from Virginia.

SELECT *
FROM customers 
WHERE state <> "VA"; 
```





Result: 





![image](https://github.com/zizanayub/Mysql-Programming-with-Mosh/assets/65456659/612849f5-e77b-414f-a67b-d9d45b76157b)








### ▶️ 05. Finding Customers with birthdate later than 01-01-1990. (> Operator)




```SQL

-- Select the customers with birthdate later 01-01-1990. 

SELECT *
FROM customers
WHERE birth_date > "1990-01-01";
```





Result: 




![image](https://github.com/zizanayub/Mysql-Programming-with-Mosh/assets/65456659/a8cd108b-2b5f-422d-b6cf-eb5a7990cdc0)







### ▶️ 06. Exercise: Get the orders placed this year. 



```SQL

SELECT *
FROM orders
WHERE order_date >= '2019-01-01';
```





Result:



![image](https://github.com/zizanayub/Mysql-Programming-with-Mosh/assets/65456659/224026cc-cd19-445c-bae8-1e87717d8f30)








## 03. The `AND`, `OR` and `NOT` Operators



### ▶️ 01. Example of `AND`



```SQL
-- Select customer whose birthdate is later than 01-01-1990 and points is greater than 1000. 

SELECT *
FROM customers
WHERE birth_date > "1990-01-01" AND points > 1000; 
```




Result:


![image](https://github.com/zizanayub/Mysql-Programming-with-Mosh/assets/65456659/1b177a83-f5b5-4ef2-a7fc-6ac46a41e108)


1. This query will return 2 rows.
2. For `AND` operator, both of the conditions need to be true. 







### ▶️ 02. Example of `OR`



```SQL
-- Select the customers with birthdate later than 1st January 1990 OR points greater than 1000. 

SELECT *
FROM customers
WHERE birth_date > "1990-01-01" OR points > 1000; 
```




Result:



![image](https://github.com/zizanayub/Mysql-Programming-with-Mosh/assets/65456659/a387954d-3b5b-41b2-a431-1c8adea8f57a)






1. It will return 7 rows.
2. The query will be executed if one of the conditions is TRUE.







### ❎ 03. Example of `OR` + `AND` (Wrong)


```SQL
SELECT *
FROM customers 
WHERE birth_date > "01-01-1990" OR points > 1000 AND state = 'VA';
```



**Result: Error Code: 1525. Incorrect DATE value: '01-01-1990'





### ☑️ 04. Example of `OR` + `AND` (Right)

```SQL

SELECT *
FROM customers 
WHERE birth_date > "1990-01-01" OR points > 1000 AND state = 'VA';
```



Result: 




![image](https://github.com/zizanayub/Mysql-Programming-with-Mosh/assets/65456659/c02ef799-0919-4d78-94fb-5f34c1d2b99d)





### 💡 05. Order of `AND` and `OR`

1.`points > 1000 AND state = 'VA'` this portion will be executed first in the last query. 


2. Orders of AND and OR: AND will be executed first and then OR.


3. In the result, there is no customer with the state = "VA" and points greater than 1000. So, it didn't work!


4. Most specifically, the query will be


```SQL

SELECT *
FROM customers
WHERE birth_date > '1990-01-01' OR 
	(points > 1000 AND state = "VA");

 ```




Result: 



![image](https://github.com/zizanayub/Mysql-Programming-with-Mosh/assets/65456659/688cfc85-270e-4ba1-86ed-2e619e53397a)






### ❎ 06.  No Database Selected

1. After opening MySQL Workbench, before starting to write the queries, the selection of a database is mandatory.

 
### ☑️ 07.  Solution to this Issue

```SQL
USE sql_store
```


Every time, you should select a database before writing the query. Otherwise, MySQL will show the error message.




### ▶️ 08. Example of `NOT`


```SQL
SELECT *
FROM customers 
WHERE NOT (birth_date > "1990-01-01" OR points > 1000); 
```




RESULT:

![image](https://github.com/zizanayub/Mysql-Programming-with-Mosh/assets/65456659/33ebb4be-8d83-4f96-9f60-ae0828d1e3a9)






### 💡 09. Operations of `NOT`



01. `WHERE NOT(birth_date > "1990-01-01" OR points > 1000)`.


Generally, it will convert all the operations to opposite.


02. The conversion will be:

`WHERE (birth_date <= "1990-01-01" AND points <= 1000)`






### ✍️ 10. Exercise



 Question: From the `order_items` table, get the items for order#6 where total price is greater than 30.




```SQL
SELECT *
FROM order_items
WHERE order_id = 6 AND quantity * unit_price > 30;
```



Result:

![image](https://github.com/zizanayub/Mysql-Programming-with-Mosh/assets/65456659/c2f35704-568a-4aff-a6be-076d6c4eb106)
