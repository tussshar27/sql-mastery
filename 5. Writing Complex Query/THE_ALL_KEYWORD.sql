-- using MAX function
SELECT invoice_total
FROM invoices
WHERE invoice_total > (
	SELECT MAX(invoice_total)
    FROM invoices
    WHERE invoice_id = 3
)

-- using ALL keyword
SELECT invoice_total
FROM invoices
WHERE invoice_total > ALL (
	SELECT invoice_total
	FROM invoices
	WHERE client_id = 3
)