USE sql_invoicing;
SELECT p.invoice_id, c.name, p.amount, pm.name AS method_of_payment		-- joining more than two tables.
FROM payments p
JOIN clients c
	ON p.client_id = c.client_id
JOIN payment_methods pm
	ON p.payment_method = pm.payment_method_id	-- payments column is equal to payment_methods column.