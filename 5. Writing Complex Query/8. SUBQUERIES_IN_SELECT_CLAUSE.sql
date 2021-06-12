SELECT 
	invoice_id,
    invoice_total,
    (SELECT AVG(invoice_total) from invoices) AS invoice_average,	-- subquery in select clause
    -- invoice_total - (SELECT AVG(invoice_total) from invoices) AS difference
    invoice_total - (SELECT invoice_average) AS difference	-- subquery used.
FROM invoices