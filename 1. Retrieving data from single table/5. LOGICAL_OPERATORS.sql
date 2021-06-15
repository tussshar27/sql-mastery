USE sql_store;
SELECT *
FROM customers
WHERE birth_date > '1990-01-01' OR points > 1000 AND state = 'VA'
-- order of preference is AND then OR, so the "points AND state" will execute first then the OR condition will get executed 
-- i.e the above query is same as ->>> WHERE birth_date > '1990-01-01' OR (points > 1000 AND state = 'VA').

-- WHERE NOT birth_date > '1990-01-01' OR points > 1000 AND state = 'VA'
-- the above where query will make opposite of all i.e
-- WHERE birth_date <= '1990-01-01' AND points <= 1000 OR state != 'VA'