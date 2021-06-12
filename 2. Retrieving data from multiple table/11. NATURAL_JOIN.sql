USE sql_invoicing;
SELECT *
FROM payments p
NATURAL JOIN clients c		-- the sql predicts  the common column and join the two table but its not recommended to use natural join.
	-- ON p.client_id = c.client_id