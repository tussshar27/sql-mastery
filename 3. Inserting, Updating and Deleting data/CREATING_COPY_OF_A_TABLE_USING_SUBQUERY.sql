CREATE TABLE invoices_archived AS(
SELECT invoice_id,number, c.name AS client,invoice_total,payment_total,invoice_date,due_date
FROM invoices i
JOIN clients c
WHERE i.client_id = c.client_id
		AND i.payment_date IS NOT NULL)
