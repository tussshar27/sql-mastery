SELECT NOW(), CURDATE(), CURTIME();	-- NOW() FUNCTION IS USED TO SHOW BOTH CURRENT DATE,TIME
-- NOW() is similar to SYSDATE
-- NOW () returns the time at which the function or triggering statement began to execute.) 
-- This differs from the behavior for SYSDATE (), 
-- which returns the exact time at which it executes.
SELECT YEAR(NOW()) ,MONTH(NOW()), DAY(NOW()), HOUR(NOW()), MINUTE(NOW()), SECOND(NOW());		-- EXTRACTING FROM NOW()	-- GIVES INTEGER VALUE
SELECT DAYNAME(NOW()), MONTHNAME(NOW());	-- GIVES STRING VALUE
SELECT EXTRACT(YEAR FROM NOW());	-- 2020		-- WORKING IS SAME AS THE ABOVE FUNCTIONS	-- IT SHOULD BE USED IF WE WANT TO PORT TO OTHER DBMS.
SELECT EXTRACT(MONTH FROM NOW());
SELECT EXTRACT(DAY FROM NOW());

-- ORACLE
SELECT TO_CHAR(sysdate, 'DD/MM/YYYY HH:MI:SS') FROM dual
-- it will show current formated date and time 
SELECT SYSTIMESTAMP FROM dual
-- SYSTIMESTAMP is used to get current date and time with exact millisecond.
-- SYSDATE shows the current date.
SELECT SYSDATE, hire_date, ROUND(MONTHS_BETWEEN(SYSDATE, hire_date)/12,0) AS years_employed
-- MONTHS_BETWEEN function is used to know the count of months between two dates, also its divided by 12 to count no. of years.And 0 is given as 2nd argument in round() so that there should be no value after decimal.
SELECT SYSDATE, ADD_MONTHS(SYSDATE, 1), ADD_MONTHS(SYSDATE, 2) FROM dual
-- eg. 16-OCT-21  16-NOV-21   16-DEC-21

USE sql_store;
SELECT *
FROM orders
-- WHERE order_date >= '2020-01-01'
WHERE YEAR(order_date) = YEAR(NOW());	-- THE ABOVE COMMENTED QUERY IS REPLACED BY THIS.
