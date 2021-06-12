USE sql_invoicing;
CREATE VIEW clients_balance AS
SELECT c.client_id, name, SUM(invoice_total-payment_total) AS balance
FROM clients c
JOIN invoices i
	USING (client_id)
GROUP BY c.client_id, name
ORDER BY client_id