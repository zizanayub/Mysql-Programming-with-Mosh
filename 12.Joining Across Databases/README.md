### ▶️ 01. Introductory Queries



```SQL
-- Joining across databases
SELECT *
FROM order_items oi
JOIN sql_inventory.products p 
ON oi.product_id = p.product_id; 
```




Result:



![image](https://github.com/zizanayub/Mysql-Programming-with-Mosh/assets/65456659/d1ff2ded-eddd-42ef-b38d-2eebd0031813)







### ▶️ 02. If We Selected "sql_inventories" database.







```SQL
-- 02. If We Selected "sql_inventories" database. 
USE sql_inventory;

SELECT *
FROM sql_store.order_items oi 
JOIN products p 
ON oi.product_id = p.product_id; 
```






Result:



![image](https://github.com/zizanayub/Mysql-Programming-with-Mosh/assets/65456659/efde1a35-3816-4265-83ce-68e5275d018f)
