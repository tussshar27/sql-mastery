USE sql_store;
SELECT o.order_date, o.order_id, c.first_name, s.name AS shipper, os.name AS status
FROM orders o
JOIN customers c
	ON o.customer_id = c.customer_id
LEFT JOIN shippers s
	ON o.shipper_id = s.shipper_id
JOIN order_statuses os
	ON o.status = os.order_status_id
-- NOTE: table output is the question, see the output table before verifying the query.