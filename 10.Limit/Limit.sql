-- Limit

-- 01. Find out the first 3 customers
SELECT *
FROM customers
LIMIT 3; 


-- 02.Select the customers from 7 to 9. 
SELECT *
FROM customers
LIMIT 6, 3; 



-- 03. Get the top 3 loyal customers
SELECT *
FROM customers
ORDER BY points DESC
LIMIT 3; 
