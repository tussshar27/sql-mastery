-- show emps whose salary is greater than avg salary
SELECT * 
FROM employees
WHERE salary > (SELECT 
    AVG(salary)
FROM employees);

-- SELECT AVG(salary) FROM employees 


