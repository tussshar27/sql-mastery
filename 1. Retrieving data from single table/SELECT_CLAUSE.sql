SELECT 
name, 
unit_price, 
(unit_price + 10) * 100 AS "new price" 
FROM products;