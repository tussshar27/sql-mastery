USE sql_store;	-- OPTIONAL in mysql workbench
SELECT 
	order_id, 
	oi.product_id,	 -- table name is given as a prefix to remove ambiguity as same column is present in both the tables so sql gets confused.
	name, 
	quantity, 
	oi.unit_price 
-- in above query, we have to mention 'oi' or 'p' with the same column name of both the table as it will not create ambiguity(confusion as same column is present in both the table so SQL gets confused which one to pick.
FROM order_items oi				-- alias oi and p
INNER JOIN products p			-- INNER is optional we can also write only JOIN
	ON oi.product_id = p.product_id		-- same as -> order_items.product_id = products.product_id
-- if we have mentioned alias of table name then we have to use that compulsory in sql or else it will give error