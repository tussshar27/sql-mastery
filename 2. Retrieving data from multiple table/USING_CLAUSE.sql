SELECT p.date, c.name AS client, p.amount, pm.name AS payment_method 
FROM payments p
JOIN clients c
	-- ON p.client_id = c.client_id
    USING (client_id)		-- this line works same as above ON query line, but USING clause will only work if both the column name is same in both the table or else we have to use ON clause.
JOIN payment_methods pm
	ON p.payment_method = pm.payment_method_id