-- Standard ANSI syntax
SELECT first_name, last_name, department_name
FROM employees emp
JOIN departments dep
ON emp.department_id = dep.department_id

-- Oracle syntax
--INNER JOIN
SELECT first_name, last_name, department_name
FROM employees emp, departments dep
WHERE emp.department_id = dep.department_id

--LEFT OUTER JOIN
SELECT first_name, last_name, department_name
FROM employees emp, departments dep
WHERE emp.department_id(+) = dep.department_id

--RIGHT OUTER JOIN
SELECT first_name, last_name, department_name
FROM employees emp, departments dep
WHERE emp.department_id = dep.department_id(+)

--FULL OUTER JOIN
SELECT first_name, last_name, department_name
FROM employees emp, departments dep
WHERE emp.department_id(+) = dep.department_id(+)
