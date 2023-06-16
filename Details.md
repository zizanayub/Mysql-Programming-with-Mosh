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







### ✍️ 06. Exercise: Get the orders placed this year. 



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






## 04. The `IN` Operator



### ❓ 01. Why `IN`?



1. In SQL, we cannot combine strings with boolean operations.



Let's check the following code:

```SQL

SELECT *
FROM customers
WHERE state = "VA" OR "GA" OR "FL"; 
```




Result:


![image](https://github.com/zizanayub/Mysql-Programming-with-Mosh/assets/65456659/cc722b0b-8604-40b5-9843-6b9a863e7405)




It will show only the result of "VA"






2. To solve this, we can add "state=" for each state name.



```SQL
SELECT *
FROM customers
WHERE state = "VA" OR state = "GA" OR state = "FL";
```



Result: 


![image](https://github.com/zizanayub/Mysql-Programming-with-Mosh/assets/65456659/4d7d2d95-dcc5-400e-bd62-c790555215d6)





3. To make the code cleaner and nice, we can utilize the `IN` operator.



```SQL
SELECT *
FROM customers
WHERE state IN ("VA", "FL", "GA"); 
```




This query will show the same Result:

![image](https://github.com/zizanayub/Mysql-Programming-with-Mosh/assets/65456659/a6fa6e55-9f56-449c-b131-ea64ff19e25c)




### 💡 02. Timing of usage of `IN` Operator

Use the `IN` operator whenever you need to compare any attribute to the list of values. 




### ✍️ 03. Exercise (IN Operator)


-Question: Return products with quantity in stock equal to 49,38,72.


-Solution:



```SQL
SELECT *
FROM products
WHERE quantity_in_stock IN (49,38,72); 
```




-Result:

![image](https://github.com/zizanayub/Mysql-Programming-with-Mosh/assets/65456659/c74f6268-0b64-4f3f-822a-fc529ae087c9)





PERFECT!!







## 05. The `BETWEEN` Operator



### ▶️ 01. Where We are Using `BETWEEN` operator?



1. Normally, we were using `AND` operator to show the customers with points between 1000 and 3000.


```SQL
-- Find the customers with points between 1000 and 3000. 
SELECT *
FROM customers
WHERE points >= 1000 AND points <= 3000; 
```





Result:

![image](https://github.com/zizanayub/Mysql-Programming-with-Mosh/assets/65456659/4a5836f3-0b53-4e2b-9c33-579314ce42a8)





2. But there is a smarter way to make the code cleaner with the `BETWEEN` operator.


```SQL
-- Show the customers with points between 1000 and 3000.
SELECT *
FROM customers
WHERE points BETWEEN 1000 and 3000; 
```




It will return the same result: 




![image](https://github.com/zizanayub/Mysql-Programming-with-Mosh/assets/65456659/e1b0b32f-39cf-4c3c-9bdf-cc07cd2e2a05)






### ❓ 02. `BETWEEN` Operator Mechanism



1. It always takes the inclusive values of the inputs.



2. It will show the inclusive values of 1000 and 3000, in the example.






### ✍️ 03. Exercise (`BETWEEN` Operator)



-Question: Return customers born between 01/01/1990 AND 01/01/2000.



-Solution:





```SQL
SELECT *
FROM customers
WHERE birth_date BETWEEN "1990-01-01" AND "2000-01-01"; 
```




-Result:


![image](https://github.com/zizanayub/Mysql-Programming-with-Mosh/assets/65456659/8042bed7-081d-4bad-9999-d5bf1bd753e1)



PERFECT!!!





## 06. The `LIKE` Operator


### ❓ 01. Why We Use `Like` Operator?




For receiving rows to match with specific string patterns.




### ▶️ 02. Show the Customers whose Last Name Starts with B.




```SQL
SELECT *
FROM customers
WHERE last_name LIKE "b%"; 
```





Result: 




![image](https://github.com/zizanayub/Mysql-Programming-with-Mosh/assets/65456659/d0f7e188-539a-40e5-ba31-e29f69a97cdd)





### ▶️ 03. Show the Customers whose Last Name Starts with Brush.





```SQL

-- Show the customers whose last name starts with "Brush"
SELECT *
FROM customers
WHERE last_name LIKE "brush%"; 
```




Result:




![image](https://github.com/zizanayub/Mysql-Programming-with-Mosh/assets/65456659/ab1ac3d7-6be0-4765-8a8e-3f41a4dc2bd0)





### ▶️ 04. Show the Customers whose Last Name contains "B"




```SQL

-- Show the Customers whose Last Name contains "B"
SELECT *
FROM customers
WHERE last_name LIKE "%b%"; 
```




Result: 




![image](https://github.com/zizanayub/Mysql-Programming-with-Mosh/assets/65456659/adf239d8-b12d-4e5e-9652-714cfdb7588b)





### ▶️ 05. Show the Customers whose Last Name ends with "Y"





```SQL
-- Show the Customers whose Last Name ends with "Y"

SELECT *
FROM customers
WHERE last_name LIKE "%y";
```





Result: 




![image](https://github.com/zizanayub/Mysql-Programming-with-Mosh/assets/65456659/f13af5a5-cec4-4b0b-a53a-d66aa56d6180)





### ▶️ 06. Show the Customers whose Last Name ends with "Y" but that name have only two characters. 



```SQL
-- Show the Customers whose Last Name ends with "Y" but that name have only two characters. 
SELECT *
FROM customers 
WHERE last_name LIKE "_y";
```




Result:

No rows.




### ▶️ 07. Show the Customers whose Last Name ends with "Y" but that name have 6 characters in total. 





```SQL
-- Show the Customers whose Last Name ends with "Y" but that name have 6 characters in total. 

SELECT *
FROM customers
WHERE last_name LIKE "_____y";
```




Result:





![image](https://github.com/zizanayub/Mysql-Programming-with-Mosh/assets/65456659/80721572-1bcf-4768-bf7b-03365255acb2)





### ▶️ 08. Show the Customers whose Last Name ends with "Y", starts with "B" but and that name have 6 characters in total. 




```SQL
-- Starts with B, Ends with Y, have 6 characters in total
SELECT *
FROM customers
WHERE last_name LIKE "b____y"; 
```




Result:




![image](https://github.com/zizanayub/Mysql-Programming-with-Mosh/assets/65456659/46b620c2-b2d4-4422-9f02-5e3119221ab8)





### 💡 09. What do "%" and "_" mean?


1. % = any number of characters.


2. _ = Single number of characters.





### ✍️ 10. Exercise (`LIKE` Operator)





- Question 1. Get the customers whose addresses contain "TRAIL" OR "Avenue".




Solution: 


```SQL
-- Exercise-01 (LIKE)
SELECT *
FROM customers 
WHERE address LIKE "%trail%" OR address LIKE "%avenue%";
```




Result:




![image](https://github.com/zizanayub/Mysql-Programming-with-Mosh/assets/65456659/2d8e5834-f4f7-4955-b9c6-17aab995eae8)





-Question 2. Get the customers whose phone numbers end with 9.



Solution: 

```SQL
-- Phone numbers end with 9
SELECT *
FROM customers
WHERE phone LIKE "%9"; 
```





Result:



![image](https://github.com/zizanayub/Mysql-Programming-with-Mosh/assets/65456659/85014cfe-4b85-4c4b-8b9a-41f64d762302)





-Question-3. Get the customers whose phone numbers not ended with 9.




```SQL
-- Phone number Not ends with 9
SELECT *
FROM customers
WHERE phone NOT LIKE "%9";
```




Result:




![image](https://github.com/zizanayub/Mysql-Programming-with-Mosh/assets/65456659/b9c056d9-e432-4953-ad88-a8c6704aa4e3)







## 06. The `REGEXP` Operator



### ▶️ 01. Last name containing "field"



```SQL
SELECT *
FROM customers 
WHERE last_name REGEXP "field"; 
```




![image](https://github.com/zizanayub/Mysql-Programming-with-Mosh/assets/65456659/a52bdd3b-d23b-4489-8871-871939ec0ec7)






### ▶️ 02. Last name starting with "field"




```SQL
-- Last name starting with "field"
SELECT *
FROM customers
WHERE last_name REGEXP "^field";
```




Result: 

No rows.





### ▶️ 03. Last name ending with "field"




```SQL
-- Last name ending with "field"
SELECT *
FROM customers
WHERE last_name REGEXP "field$";
```




Result:




![image](https://github.com/zizanayub/Mysql-Programming-with-Mosh/assets/65456659/9cbbd7f5-57c7-4bf6-9ebb-9dff9c5ee959)





### ▶️ 04. Containing "Mac" or "Field"




```SQL
-- Last name containing "Mac" or "Field"
SELECT *
FROM customers
WHERE last_name REGEXP "mac|field";
```




Result:



![image](https://github.com/zizanayub/Mysql-Programming-with-Mosh/assets/65456659/15ec090e-71ee-4c57-b7c6-98325198304a)






### ▶️ 05. Last Name Containing "Mac" or "Field" or "Rose"




```SQL

-- Last name containing "field" or "mac" or "rose"
SELECT *
FROM customers
WHERE last_name REGEXP "field|mac|rose";
```



Result: 




![image](https://github.com/zizanayub/Mysql-Programming-with-Mosh/assets/65456659/de056d2f-f01f-46bc-bd05-85b2d2c5c22b)






### ▶️ 06. Last Name Containing "Mac" or  "Rose" or starting with "FIeld"




```SQL
-- Last Name Containing "Mac" or  "Rose" or starting with "Field"
SELECT *
FROM customers
WHERE last_name REGEXP "^field|mac|rose"; 
```




Result:



![image](https://github.com/zizanayub/Mysql-Programming-with-Mosh/assets/65456659/5188251a-053f-4f62-b22b-45f9e138064f)


