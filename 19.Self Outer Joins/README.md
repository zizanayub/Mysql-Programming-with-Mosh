### ▶️ 01.Query All the Employees with their Managers.


```SQL
-- 01.Query All the Employees with their Managers.
SELECT 
      e.employee_id,
      e.first_name "Employee First Name",
      m.employee_id "Manager ID",
      m.first_name "Manager First Name"
FROM  employees e 
JOIN employees  m 
    ON e.reports_to = m.employee_id; 
```
 
 
 
 
 Result:
 
 ![image](https://github.com/zizanayub/Mysql-Programming-with-Mosh/assets/65456659/1dd07d52-148d-457d-a2d8-5c1e6a8ba4e3)



19 rows returned.






 
 ### 💡 02.Query All the Employees with their Managers. (Even who don't have managers)
 
 
 1. We got the employees with managers' information.
 2. But, if we want to get the employees information who don't have managers? We must use Left Join. 




```SQL
-- 02.Query All the Employees with their Managers. (Even who don't have managers)


SELECT 
      e.employee_id,
      e.first_name,
      m.employee_id,
      m.first_name
FROM employees e 
LEFT JOIN employees m
     ON e.reports_to = m.employee_id; 
 ```
 
 
 
 It will show Null value for who doesn't have any manager.
 
 
 
 Result: 
 
 
 
 
 ![image](https://github.com/zizanayub/Mysql-Programming-with-Mosh/assets/65456659/62fd21d4-d590-4b84-92b9-ce5f0a3b747a)




20 rows returned. 

 
