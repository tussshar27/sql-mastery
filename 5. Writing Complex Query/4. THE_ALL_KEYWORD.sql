-- using MAX function
USE sql_invoicing;
SELECT invoice_total
FROM invoices
WHERE invoice_total > (
	SELECT MAX(invoice_total)
    FROM invoices
    WHERE invoice_id = 3
);

-- using ALL keyword
USE sql_invoicing;
SELECT invoice_total
FROM invoices
WHERE invoice_total > ALL (		-- it is similar to eg. ALL(150,130,80,100)
	SELECT invoice_total
	FROM invoices
	WHERE client_id = 3
)