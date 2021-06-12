-- SELECT *
-- FROM orders o
-- JOIN customers c
-- 	ON o.customer_id = c.customer_id

-- IMPLICIT JOIN SYNTAX(same as above query)
SELECT *
FROM orders o, customers c
WHERE o.customer_id = c.customer_id

-- NOTE: we should not use implicit join syntax, as if we forget WHERE clause then it will create cross join
-- which means every single row from one table will join to every single row of other table.