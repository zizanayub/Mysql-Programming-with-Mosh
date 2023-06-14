## The `SELECT` Statement



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


