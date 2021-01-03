SELECT *
FROM customers
-- WHERE points >= 1000 AND points <= 3000
-- the above query can be written in shortcut using BETWEEN operator.

-- WHERE points BETWEEN 1000 AND 3000

WHERE birth_date BETWEEN '1990-01-01' AND '2000-01-01'