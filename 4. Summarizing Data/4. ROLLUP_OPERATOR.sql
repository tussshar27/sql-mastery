USE sql_invoicing;

SELECT 
	p.client_id,
	pm.name AS payment_method,
    SUM(p.amount) AS total
FROM payments p
JOIN payment_methods pm
	ON p.payment_method = pm.payment_method_id
GROUP BY p.client_id, pm.name WITH ROLLUP		-- WITH ROLLUP gives the total in last row, when we use WITH ROLLUP u can't use alias name as it will give an error, so we are using pm.name instead of payment_method
ORDER BY total
-- Note: WITH ROLLUP operator will only show result if there is aggregate function column present in SELECT statement.
-- ROLLUP operator calculates for each group if more than 1 non-aggregate column in used.
-- WITH ROLLUP operator is only available in MYSQL an not in any other dbms.
