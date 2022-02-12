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

-- Oracle
SELECT TO_CHAR(sysdate, 'DD/MM/YYYY HH:MI:SS') FROM dual
-- it will show current formated date and time 

USE sql_store;
SELECT *
FROM orders
-- WHERE order_date >= '2020-01-01'
WHERE YEAR(order_date) = YEAR(NOW());	-- THE ABOVE COMMENTED QUERY IS REPLACED BY THIS.
