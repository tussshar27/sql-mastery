USE sql_store;
SELECT *
FROM customers
WHERE birth_date BETWEEN '1990-01-01' AND '2000-01-01'	-- note: date is always consider as String
-- WHERE birth_date >= TO_DATE('2020-JAN-15', 'YYYY-MON-DD');  -- TO_DATE function is used to convert String to date with specified date format.
-- SELECT to_date('20200526','YYYYMMDD');
-- SELECT TO_DATE('2020-05-26 13:27:18', 'YYYY-MM-DD HH24:MI:SS');

-- WHERE customer_id BETWEEN 5 AND 10

-- WHERE points >= 1000 AND points <= 3000
-- the above query can be written in shortcut using BETWEEN operator as shown below:
-- WHERE points BETWEEN 1000 AND 3000

-- the main difference between IN operator and BETWEEN operator is:
-- if we want to fetch data only of roll no.s 2, 5, 8, 12 then IN operator is used eg. IN(2,5,8,12)
-- where as if we want to fetch data in range suppose between 10 to 50 then BETWEEN operator is used eg. BETWEEN 10 AND 50
