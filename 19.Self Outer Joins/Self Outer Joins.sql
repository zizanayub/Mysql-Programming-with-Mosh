-- 01.Query All the Employees with their Managers.
SELECT 
      e.employee_id,
      e.first_name "Employee First Name",
      m.employee_id "Manager ID",
      m.first_name "Manager First Name"
FROM  employees e 
JOIN employees  m 
    ON e.reports_to = m.employee_id; 
    



-- 02.Query All the Employees with their Managers. (Even who don't have managers)


SELECT 
      e.employee_id,
      e.first_name,
      m.employee_id,
      m.first_name
FROM employees e 
LEFT JOIN employees m
     ON e.reports_to = m.employee_id; 
