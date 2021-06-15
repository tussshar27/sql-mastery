USE sql_store;
SELECT *
FROM customers
WHERE last_name LIKE "b____y"	-- word starts with b and in middle 5 letters and ends with y
-- WHERE first_name LIKE "b%"	-- word starts with b
-- WHERE first_name LIKE "%b"	-- word ends with b
-- WHERE first_name LIKE "%b%"	-- word has b in between.
-- WHERE first_name LIKE "_y"	-- 2 letter word ends with y
-- WHERE first_name LIKE "m%y"	-- word starts with m and ends with y.

-- The LIKE operator is used in a WHERE clause to search for a specified pattern in a value of a column.
-- note: to use number mention it as String eg. WHERE phone LIKE "9%"
