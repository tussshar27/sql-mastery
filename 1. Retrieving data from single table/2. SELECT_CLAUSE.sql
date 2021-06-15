USE sql_store;
SELECT 
name, 
unit_price, 
(unit_price + 10) * 100 AS "new price" 	-- "new price" new column will be created in result only.
FROM products;