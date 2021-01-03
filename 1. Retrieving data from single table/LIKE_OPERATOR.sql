SELECT *
FROM customers
-- WHERE first_name LIKE "b%"	-- word starts with b
-- WHERE first_name LIKE "%b"	-- word ends with b
-- WHERE first_name LIKE "%b%"	-- word has b
-- WHERE first_name LIKE "_y"	-- 2 letter word ends with y
WHERE last_name LIKE "b____y"	-- word starts with b and in middle 5 letters and ends with y

