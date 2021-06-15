USE sql_store;
SELECT * 
FROM customers
-- WHERE first_name REGEXP "alka|ambur"	-- have word alka or ambur in anywhere
-- WHERE last_name REGEXP "ey$|on$"	-- ends with ey or ends with on
-- WHERE last_name REGEXP "^my|se"	-- start with my or se in anywhere
-- WHERE last_name REGEXP "b[ru]"	-- b followed by r or u, anywhere in word, b[ru] is same as br|bu
WHERE last_name REGEXP "[ru]b"	-- r or u folowed by b, anywhere in word

-- REGEXP is shortcut for LIKE operator