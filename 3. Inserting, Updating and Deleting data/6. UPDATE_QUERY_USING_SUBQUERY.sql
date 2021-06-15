-- Q) update comment to 'Gold  Customer' where points>= 3000
USE sql_store;
UPDATE orders
SET comments = 'Gold Customer'
WHERE customer_id IN 		-- IN operator is used because of multiple values
		(SELECT customer_id
		FROM customers
		WHERE points >= 3000)
        
-- here comments column is present in orders table and points column is present in customers table, so subquery is used.