-- show emps whose salary is greater than avg salary
USE sql_hr;
SELECT * 
FROM employees
WHERE salary > (SELECT 
    AVG(salary)
FROM employees);

-- SELECT AVG(salary) FROM employees 


