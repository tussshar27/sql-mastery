USE sql_store;
SELECT *
FROM customers
WHERE address LIKE "%TRAIL%" OR 
	  address LIKE "%AVENUE%" 
	
-- WHERE phone LIKE "%9"