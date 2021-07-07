-- Q) select clients with atleast 2 invoices.
-- using = ANY operator
USE sql_invoicing;
SELECT *
FROM clients
WHERE client_id = ANY (
	SELECT client_id
    FROM invoices
    GROUP BY client_id
    HAVING COUNT(*) >= 2
);
-- use of COUNT function
SELECT client_id, COUNT(client_id), COUNT(*)
    FROM invoices
    GROUP BY client_id;
    
-- using IN operator
SELECT *
FROM clients
WHERE client_id IN (
	SELECT client_id
    FROM invoices
    GROUP BY client_id
    HAVING COUNT(*) >= 2
)
-- Note: IN operator is equivalent to = ANY operator.