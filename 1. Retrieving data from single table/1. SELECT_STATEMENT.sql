USE sql_store;

SELECT * 	-- * means all
FROM customers	-- table name
WHERE customer_id =1	-- only id=1 data will be shown
ORDER BY first_name;	-- The ORDER BY keyword sorts the records in ascending order by default.
-- To sort the records in descending order, use the DESC keyword before the end of line.
