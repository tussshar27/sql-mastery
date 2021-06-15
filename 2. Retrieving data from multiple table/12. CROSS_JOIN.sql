USE sql_invoicing;

SELECT *
FROM payments p
CROSS JOIN clients c
-- FROM payments p, clients c		-- this line is same as above two line
-- in cross join, each row of column of first table joins with each row of column of second table.