USE sql_invoicing;
-- ALWAYS USE BELOW METHOD OF CREATING VIEWS HAVE REPLACE KEYWORD
-- ALTERING
CREATE OR REPLACE VIEW clients_balance AS
SELECT c.client_id, name, SUM(invoice_total-payment_total) AS balance
FROM clients c
JOIN invoices i
	USING (client_id)
GROUP BY c.client_id, name
ORDER BY client_id;

-- DROPPING
DROP VIEW clients_balance