USE sql_invoicing;
CREATE OR REPLACE VIEW invoices_with_balance AS
SELECT 
	invoice_id,
    number,
    client_id,
    invoice_total,
    payment_total,
    invoice_total - payment_total AS balance,
    invoice_date,
    due_date,
    payment_date
FROM invoices
WHERE (invoice_total - payment_total) > 0
WITH CHECK OPTION;				-- THIS IS USED TO AVOID REMOVAL OF ROW FROM VIEW BY SQL IF THE CONDITION IS NOT ACCEPTABLE BY VIEW

-- ----------------------------------------------------------
-- below query is not acceptable by the view so the WITH CHECK OPTION avoids the affected row removal automtically by the sql.
UPDATE invoices_with_balance
SET payment_total = invoice_total
WHERE invoice_id = 3

-- ----------------------------------------------------------
-- the advantages of views are:
-- 1. simplify queries
-- 2. reduce the impact of changes
-- 3. restrict access to the data