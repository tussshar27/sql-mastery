USE sql_store;
DELETE FROM orders
WHERE customer_id IN
	   (SELECT customer_id
        WHERE first_name = 'Elka');
-- syntax: DELETE FROM - WHERE