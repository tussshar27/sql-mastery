USE sql_invoicing;

SELECT *
FROM payments p
CROSS JOIN clients c
-- FROM payments p, clients c		-- this line is same as above two line