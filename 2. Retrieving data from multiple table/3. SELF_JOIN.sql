USE sql_hr;
SELECT e.first_name, e.last_name, e.employee_id, m.employee_id AS manager	-- self join is used when we want same column of same table more than once.
FROM employees e	-- employee
JOIN employees m 	-- manager	
ON e.reports_to = m.employee_id
