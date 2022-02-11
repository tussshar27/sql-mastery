USE sql_store;
SELECT *
FROM products
WHERE quantity_in_stock IN (49,38,72,90)
-- we can also use NOT IN which works opposite to IN operator. 
-- show products where quantity_in_stock equal to 49 or 38 or 72 or 90.
-- IN operator is used when we want to fetch for more than one value for a single column.
