### ▶️ 01. Basics


```SQL
-- Natural Join 
USE sql_store;
SELECT 
      o.order_id,
      c.first_name
FROM customers c
NATURAL JOIN orders o
ORDER BY o.order_id; 
```



Result:

10 rows returned.


![image](https://github.com/zizanayub/Mysql-Programming-with-Mosh/assets/65456659/69ed8038-56a6-40d0-b342-12353fede03f)




### 💡 02. What is it?

CROSS JOIN automatically identifies the common columns of the two tables. 
