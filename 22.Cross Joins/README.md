### 💡 01. What is `CROSS JOIN`?

Combines every record of the first table with the every record of the second table.


### ▶️ 02. CROSS JOIN `Customer` Column with `Products` Column

```SQL
-- 02.CROSS JOIN `Customer` Column with `Products` Column
SELECT 
      c.first_name "Customer's First Name",
      p.name "Products"
FROM customers c
CROSS JOIN products p 
ORDER BY c.first_name; 

```



Result:


100 Rows returned.


![image](https://github.com/zizanayub/Mysql-Programming-with-Mosh/assets/65456659/8ae3a789-19a0-4e86-a820-026379b8474c)






### ▶️ 03. Implicit Syntax



```
-- 03. Implicit Syntax
SELECT 
      c.first_name "Customer's First Name",
      p.name "Product"
FROM customers c,products p
ORDER BY c.first_name
```



Result:


100 rows returned.


![image](https://github.com/zizanayub/Mysql-Programming-with-Mosh/assets/65456659/4c641e57-d17a-4c7c-a5c4-3766d8402249)





### ✍️ 04. Do a cross join between shippers and products

```SQL
-- 04. Exercise
SELECT
	 sh.name "Shipper Name", 
     p.name "Product Name"
FROM shippers sh
CROSS JOIN products p 
ORDER BY p.name;
```



Result:

![image](https://github.com/zizanayub/Mysql-Programming-with-Mosh/assets/65456659/dd582893-d273-41e6-a12a-b7d9bacc79f9)


50 rows returned. 


