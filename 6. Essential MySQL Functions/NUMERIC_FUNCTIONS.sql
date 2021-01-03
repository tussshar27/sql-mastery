-- to run query select any one and run.
-- There are more mysql numeric functions but these are the most used and common functions.
SELECT ROUND(7.53251,1);		-- 7.5
SELECT ROUND(7.53251,2);		-- 7.53
SELECT TRUNCATE(7.532551,5);	-- 7.53255 		-- truncate and round are same.
SELECT CEILING(7.53251);		-- 8
SELECT CEILING(7.21);			-- 8
SELECT FLOOR(7.851);			-- 7
SELECT FLOOR(7.31);				-- 7
SELECT ABS(7.851);	-- Absolute value
SELECT ABS(-7.851);	-- Absolute value
SELECT RAND();	-- Its used to generate random float number between 0 and 1 every time we run this query.
