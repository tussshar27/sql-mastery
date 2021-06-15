-- USE sql_invoicing;
-- Select subquery
-- CREATE TABLE invoices_archived AS(
-- SELECT * FROM invoices)

-- by running above query mysql will create new table as same as old table with all the data in it.
-- but there is a catch, in new table by default there will be no primary key and AI to a column.

-- Insert subquery
-- INSERT INTO invoices_archived 	-- note: if column names are same in both the tables then there is no need of mentioning column names.
-- SELECT * FROM invoices
-- WHERE invoice_date > '2019-03-01';

-- subquery exercise
USE sql_invoicing;
CREATE TABLE invoices_archived AS(
SELECT 
	invoice_id,
    number,
    c.name AS client,
    invoice_total,
    payment_total,
    invoice_date,
    due_date
FROM invoices i
JOIN clients c
	ON i.client_id = c.client_id
	AND i.payment_date IS NOT NULL)
