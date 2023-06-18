-- Self Joins
-- 01. Find out employee and their managers
USE sql_hr;


SELECT *
FROM employees e
JOIN employees m 
ON e.reports_to = m.employee_id; 





-- 02. Find out employee and their managers (Specific)
SELECT
      e.employee_id,
      e.first_name "Employee First Name",
      e.reports_to "Manager ID",
      m.first_name AS "Manager's First Name"
FROM employees e
JOIN employees m
ON e.reports_to = m.employee_id; 
