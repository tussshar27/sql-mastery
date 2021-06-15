USE sql_invoicing;

SELECT 
	p.date, 
    pm.name AS payment_method, 
    SUM(p.amount) AS total_payments
FROM payments p
JOIN payment_methods pm
	ON p.payment_method = pm.payment_method_id
GROUP BY date, payment_method	-- here data is grouped by date and payment_method.
-- Note: if we use aggregate function in SELECT statement then in GROUP BY clause use all the columns without aggregate function.
ORDER BY date
-- syntax order to write: SELECT - FROM - WHERE(optional) - GROUP BY - ORDER BY
-- Note: you can't write ORDER BY clause before GROUP BY clause and WHERE clause, it will show error.