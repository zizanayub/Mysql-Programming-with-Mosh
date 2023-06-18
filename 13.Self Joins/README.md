*** ▶️ 01. Find out employee and their managers




```SQL
-- 01. Find out employee and their managers
USE sql_hr;


SELECT *
FROM employees e
JOIN employees m 
ON e.reports_to = m.employee_id; 
```





Result:
19 rows returned. 



![image](https://github.com/zizanayub/Mysql-Programming-with-Mosh/assets/65456659/e6f2e691-5a25-470a-a6ca-8a9edea9dd60)







1. First it is getting the employee_ids of the managers.
2. Then, it matches with the employee_id for the 2nd time in the same table and return. 







*** ▶️ 02. Find out employee and their managers (Specific)






```SQL
-- 02. Find out employee and their managers (Specific)
SELECT
      e.employee_id,
      e.first_name "Employee First Name",
      e.reports_to "Manager ID",
      m.first_name AS "Manager's First Name"
FROM employees e
JOIN employees m
ON e.reports_to = m.employee_id; 
```





Result:




![image](https://github.com/zizanayub/Mysql-Programming-with-Mosh/assets/65456659/132c4ab5-cd1a-47a5-9bfb-5aee991db869)
