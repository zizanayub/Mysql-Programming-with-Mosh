-- CROSS JOINS


-- 02.CROSS JOIN `Customer` Column with `Products` Column
SELECT 
      c.first_name "Customer's First Name",
      p.name "Products"
FROM customers c
CROSS JOIN products p 
ORDER BY c.first_name; 




-- 03. Implicit Syntax
SELECT 
      c.first_name "Customer's First Name",
      p.name "Product"
FROM customers c,products p
ORDER BY c.first_name;



-- 04. Exercise
SELECT
	 sh.name "Shipper Name", 
     p.name "Product Name"
FROM shippers sh
CROSS JOIN products p 
ORDER BY p.name;
