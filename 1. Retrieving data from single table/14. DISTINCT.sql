SELECT DISTINCT dep_id  
FROM employees
-- DISTINCT keyword will remove all the duplicate values.

SELECT DISTINCT (dep_id, salary)
FROM employees
-- above query will show unique values of combination of both columns
