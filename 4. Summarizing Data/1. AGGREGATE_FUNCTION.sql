USE sql_invoicing;

SELECT "First Half of 2019" as date_range, sum(invoice_total) as total_sales, sum(payment_total) as total_payments, sum(invoice_total-payment_total) as what_we_expect
FROM invoices
WHERE invoice_date BETWEEN '2019-01-01' AND '2019-06-30' 
UNION
SELECT "Second Half of 2019" as date_range, sum(invoice_total) as total_sales, sum(payment_total) as total_payments, sum(invoice_total-payment_total) as what_we_expect
FROM invoices
WHERE invoice_date BETWEEN '2019-07-01' AND '2019-12-31' 
UNION
SELECT "Total" as date_range, sum(invoice_total) as total_sales, sum(payment_total) as total_payments, sum(invoice_total-payment_total) as what_we_expect
FROM invoices
WHERE invoice_date BETWEEN '2019-01-01' AND '2019-12-31' ;

-- -------------------------------------------------------------------------------------------------------
SELECT 
	MAX(invoice_date) AS max_date, 	-- will give the max date
    MIN(invoice_date) AS min_date,	-- min date
    AVG(invoice_total) AS avg_invoice_total, 	-- avgerage value
    SUM(invoice_total) AS total					-- sum of all values
FROM invoices
