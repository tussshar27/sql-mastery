-- Correlated subqueries - means for each row of outer query the subquery will run for it where as in uncorrelated subqueries the subquery runs only for one time for all rows of outer query.
SELECT invoice_id, client_id
FROM invoices i
WHERE invoice_total > (
	SELECT AVG(invoice_total)		-- this subquery will run first like a loop to find the AVG salary and then outer query will compare from it.
    FROM invoices
    WHERE client_id = i.client_id	-- we only want invoices for current client.
);