### ▶️ 01. Find Out the First 3 Customers.




```SQL
-- 01. Find out the first 3 customers
SELECT *
FROM customers
LIMIT 3; 
```




Result:


![image](https://github.com/zizanayub/Mysql-Programming-with-Mosh/assets/65456659/0a22adc1-a86b-4673-a40a-a18743cc74ff)




### 💡 02. Select the customers from 7 to 9. 


```SQL
-- 02.Select the customers from 7 to 9. 
SELECT *
FROM customers
LIMIT 6, 3;
```



`LIMIT 6,3` means skip first 6 rows first, then show next 3 columns. 



Result:


![image](https://github.com/zizanayub/Mysql-Programming-with-Mosh/assets/65456659/ae9706a5-13cb-4226-b8fd-1c791f8c39e4)








### ✍️ Exercise



Question: Get the top 3 loyal customers



```SQL
-- 03. Get the top 3 loyal customers
SELECT *
FROM customers
ORDER BY points DESC
LIMIT 3; 
```




Result:





![image](https://github.com/zizanayub/Mysql-Programming-with-Mosh/assets/65456659/a40a6df5-2bb5-422d-b48b-741179a8a697)







### 💡 Orders of the clauses.

1. Select
2. FROM
3. WHERE
4. ORDER BY
5. LIMIT

