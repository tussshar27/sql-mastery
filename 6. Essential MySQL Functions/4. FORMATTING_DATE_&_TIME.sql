SELECT DATE_FORMAT(NOW(), '%m %d %y');	-- 12 30 20
SELECT DATE_FORMAT(NOW(), '%M %D %Y');	-- December 30th 2020
SELECT TIME_FORMAT(NOW(), '%h:%i:%p');	-- 10 43 AM
-- Above functions are used in MySQL, in Oracle we use TO_CHAR() function.

SELECT TO_CHAR(dateofbirth_col, 'DD/MON/YYYY') FROM employees
