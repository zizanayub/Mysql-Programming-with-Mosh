-- 01. Order by first names
SELECT *
FROM customers
ORDER BY first_name; 



-- 02. Order by first names discending order
SELECT *
FROM customers
ORDER BY first_name DESC; 




-- 03. Order By State and Customer's First Name.
SELECT *
FROM customers
ORDER BY state, first_name; 



-- 04. Same query with discending order.
SELECT *
FROM customers 
ORDER BY state DESC, first_name DESC; 




-- 05. Order by Birth Dates.
SELECT first_name, last_name, birth_date
FROM customers
ORDER BY birth_date;




-- 06. Find Out Most Loyal Customers. 
SELECT first_name, last_name, points
FROM customers
ORDER BY points DESC, first_name; 




-- 07. Show customers ordered by first name where 10 is default point value 
SELECT first_name, last_name, 10 AS points
FROM customers
ORDER BY points DESC, first_name; 



-- 08. Use 1,2 to reduce complexity and time.
SELECT customer_id, first_name, last_name
FROM customers
ORDER BY 2,3;



-- 09. Exercise-01
SELECT *
FROM order_items
WHERE order_id = 2
ORDER BY quantity * unit_price DESC; 




-- 09. Exercise-01. Now show total price

SELECT *,quantity * unit_price Total_Price
FROM order_items
WHERE order_id = 2
ORDER BY 2; 
