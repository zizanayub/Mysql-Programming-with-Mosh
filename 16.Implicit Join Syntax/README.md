### ▶️ 01. Concept What we Know



If we want to join customers and orders table, we can join the columns customer_id of two tables as they are the common tables


```SQL
-- Implicit Join Syntax
SELECT *
FROM orders o
JOIN customers c 
ON o.customer_id = c.customer_id; 
```



### ▶️ 02. Alternative Way to Write this Query


```
-- 02. Alternative Way to Write this Query
SELECT *
FROM orders o, customers c 
WHERE o.customer_id = c.customer_id; 
```



### 💡 Some Important Notes


1. If you accidentally remove "Where" clause, you will get a cross join.
2. For this cross join, there will be 100 rows (10*10)
3. It is recommended to use `Explicit Join Syntax`. 
