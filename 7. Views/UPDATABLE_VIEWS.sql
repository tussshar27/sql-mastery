-- To update view, the below mentioned clauses should not be present in the view or else it will not update the view.
-- > DISTINCT
-- > Aggregate functions (MIN, MAX, SUM, AVG)
-- > GROUP BY / HAVING
-- > UNION

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
WHERE (invoice_total - payment_total) > 0;

-- ---------------------------------------------------------
DELETE FROM invoices_with_balance
WHERE invoice_id = 1;

-- ----------------------------------------------------------
UPDATE invoices_with_balance
SET due_date = DATE_ADD(due_date, INTERVAL 2 DAY)
WHERE invoice_id = 2;

-- ----------------------------------------------------------
-- INSERT RESORD SCENARIO:
	-- > to insert in views, it must have all the columns of the table or else it will give error because if we miss any column in view, the table must accept null values or else it will give error.

