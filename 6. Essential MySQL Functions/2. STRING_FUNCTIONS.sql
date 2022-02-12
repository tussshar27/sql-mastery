SELECT LENGTH('SKY');	-- 3	-- GIVES THE LENGTH OF THE STRING
SELECT UPPER('sky');	-- SKY 	-- TRANSFORMS TO UPPER CASE
SELECT LOWER('SKy');	-- sky	-- TRANSFORMS T0 LOWER CASE
SELECT TRIM('	SKY	');	-- REMOVES THE WHITESPACES
SELECT LTRIM('     SKY');	-- REMOVES THE LEFT SIDE WHITESPACES
SELECT RTRIM('  SKY    ');	-- REMOVES THE RIGHT SIDE WHITESPACES
SELECT LEFT('Kindergarten', 4);	-- Kind
SELECT RIGHT('Kindergarten', 5);	-- garten
SELECT SUBSTRING('Kindergarten', 3, 5);	-- nderg	-- 5 is optional which shows length
SELECT SUBSTRING('Kindergarten', 3);	-- ndergarten
SELECT SUBSTR(column_name, 1, 5) FROM table_name; --substring all the row values till 5th char.
SELECT LOCATE('N','Kindergarten');	-- 3 -- GIVES THE POSITION OF CHARACTER TO SEARCH	-- not casesensitive
SELECT LOCATE('q','Kindergarten');	-- 0
SELECT LOCATE('inder','Kindergarten');	-- 2	-- gives first character occurance
LOCATE() is same as INSTR() function.
SELECT REPLACE('Kindergarten','garten','garden');	-- replace the given string
SELECT CONCAT('ABC', 'PQR');
SELECT CONCAT(fname, lname) FROM employees;

USE sql_store;
SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM customers;
