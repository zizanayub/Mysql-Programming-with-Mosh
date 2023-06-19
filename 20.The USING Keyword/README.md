### 💡 We CAN USE `USING` Instead of `c.customer_id = o.customer_id`

How?


We can only use this keyword when the column_names are same. Otherwise not! 

```SQL
SELECT 
      c.customer_id,
      o.order_id
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id;
 ```
 
 
 
 Instead of this, we can write,
 
 
 ```SQL
 SELECT 
      c.customer_id,
      o.order_id
FROM customers c
JOIN orders o
USING (customer_id);
```



Results are same. 10 rows returned.



![image](https://github.com/zizanayub/Mysql-Programming-with-Mosh/assets/65456659/b0271bf5-6a23-4d50-94cd-d10934b3d5e2)
