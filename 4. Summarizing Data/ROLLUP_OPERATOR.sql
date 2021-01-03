USE sql_invoicing;

SELECT 
	p.client_id,
	pm.name AS payment_method,
    SUM(p.amount) AS total
FROM payments p
JOIN payment_methods pm
	ON p.payment_method = pm.payment_method_id
GROUP BY p.client_id, pm.name WITH ROLLUP		-- WITH ROLLUP gives the total in last row, when we use WITH ROLLUP u can't use alias name so we are using pm.name instead of payment_method
ORDER BY total
-- for more than 2 columns in WITH ROLLUP it will create output with each column