USE sql_invoicing;

CREATE VIEW sales_by_clientsales_by_clientsales_by_client AS	-- IT WILL CREATE VIRTUAL TABLE WHICH IS A VIEW.
SELECT c.client_id, name, SUM(payment_total)
FROM clients c
JOIN invoices i
	USING (client_id)
GROUP BY client_id, name
ORDER BY client_id
-- NOTE: VIEWS DON'T STORE DATA AS LIKE TABLE, IT JUST PROVIDE VIEW OF THE TABLE.
-- In Views folder in mysql workbench view will get created b running this query.
-- view is used to avoid complex queries.
-- we can also join view with table and show result as output just like normal table queries but the data in view in not stored unlike in tables.