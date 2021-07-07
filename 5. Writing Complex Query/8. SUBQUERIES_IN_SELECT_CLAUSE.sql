USE sql_invoicing;
SELECT 
	invoice_id,
    invoice_total,
    -- only AVG(invoice_total) is not used here sincedon't want only one value but to print avg for each row.
    (SELECT AVG(invoice_total) from invoices) AS invoice_average,	-- subquery in select clause
    -- invoice_total - (SELECT AVG(invoice_total) from invoices) AS difference
    invoice_total - (SELECT invoice_average) AS difference	-- subquery used.
    -- we cannot use column alias in expression so invoice_average is used as SELECT statement subquery.
FROM invoices