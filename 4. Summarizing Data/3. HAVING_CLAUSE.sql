SELECT 
	c.first_name,
	c.state,
    SUM(oi.unit_price*oi.quantity) AS spent_price
FROM customers c
JOIN orders o
	USING (customer_id)
JOIN order_items oi
	USING (order_id)
HAVING state = 'VA' AND spent_price>=100
