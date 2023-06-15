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
