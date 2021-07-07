-- show clients who don't have invoices.
USE sql_invoicing;
SELECT *
FROM clients
WHERE client_id NOT IN (		-- NOT IN
	SELECT DISTINCT client_id	-- DISTINCT removes the duplicate values
	FROM invoices
)