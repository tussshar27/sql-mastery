USE sql_invoicing;
SELECT 
	c.client_id,
    c.name,
    (SELECT SUM(invoice_total) FROM invoices WHERE client_id = c.client_id) AS total_sales,		-- returns total sales for each client
    (SELECT AVG(invoice_total) FROM invoices) AS average,	-- return avg total of all invoices
    (SELECT total_sales - average) AS difference
FROM clients c
