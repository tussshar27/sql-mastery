USE sql_store;
SELECT 
	c.first_name,
    c.last_name,
	c.state,
    SUM(oi.unit_price*oi.quantity) AS spent_price
FROM customers c
JOIN orders o
	USING (customer_id)
JOIN order_items oi
	USING (order_id)
WHERE state = 'VA'
GROUP BY 	-- Note: if we use aggregate function in SELECT statement then in GROUP BY clause use all the columns without aggregate function.
	c.first_name,	-- Now the group is created by first_name, last_name, State showing unique values in combination.
    c.last_name,
	c.state
HAVING spent_price>=100;	-- HAVING clause is used after GROUP BY clause.
-- NOTE: WHERE clause is used for single record, whereas HAVING clause is used for grouped data.
