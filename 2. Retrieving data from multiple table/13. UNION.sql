USE sql_store;		-- The SQL UNION operator is used to combine the result sets of 2 or more SELECT statements.
SELECT				-- select statement will be run serial wise.
	customer_id,
    first_name,
    points,
    "Bronze" AS type	-- custom column with custom rows
FROM customers
WHERE points < 2000

UNION

SELECT
	customer_id,
    first_name,
    points,
    "Silver" AS type
FROM customers
WHERE points BETWEEN 2000 AND 3000

UNION

SELECT
	customer_id,
    first_name,
    points,
    "Gold" AS type
FROM customers
WHERE points > 3000

ORDER BY first_name;
