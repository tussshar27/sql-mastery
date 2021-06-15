USE sql_hr;
SELECT e.employee_id, e.first_name, m.first_name AS manager
FROM employees e
LEFT JOIN employees m
	ON e.reports_to = m.employee_id
    
-- here we want all the emp whether they have manager or not.