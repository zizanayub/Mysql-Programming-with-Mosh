### ▶️ 01. Concept


If there are two primary keys in a table, that table is called "Composite Primary Key".



```SQL
-- Compound Join Conditions
SELECT *
FROM order_items oi
JOIN order_item_notes oin
ON oi.order_id = oin.order_id
AND oi.product_id = oi.product_id; 
```




Result:



![image](https://github.com/zizanayub/Mysql-Programming-with-Mosh/assets/65456659/4f6b83c1-a816-4b1f-b339-0035b7890030)

