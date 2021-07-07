-- Q) find customers who brought lettuce(product_id = 3)
-- There are two ways from which we can solve complex sql problems i.e by join or by subquery.
USE sql_store;
-- using SUBQUERY
SELECT 
	customer_id,
    first_name,
    last_name
FROM customers
WHERE customer_id IN
(
	SELECT c.customer_id
	FROM customers c
	JOIN orders o USING (customer_id)
	JOIN order_items oi USING (order_id)
	WHERE oi.product_id = 3
)
ORDER BY customer_id;

-- using JOIN
SELECT 
	DISTINCT customer_id,
    first_name,
    last_name
FROM customers c
JOIN orders o USING (customer_id)
JOIN order_items oi USING (order_id)
WHERE oi.product_id = 3
ORDER BY customer_id;






