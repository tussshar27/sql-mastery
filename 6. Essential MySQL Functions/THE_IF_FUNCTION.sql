SELECT 
	oi.product_id,
	name,
	COUNT(*) AS orders,		-- count of same value rows for each product_id due to GROUP BY clause
    IF(					-- IF function is used to replace UNION. and its single expression handler
		COUNT(*) > 1,
        'Many times',
        'Once'
	) AS frequency
FROM products p
JOIN order_items oi
	USING (product_id)
GROUP BY oi.product_id, name	-- note: if we use agregate function to a column name inside SELECT CLAUSE then if we want to use GROUP BY clause then remaining normal columns must be used in it as shown in query. 
ORDER BY oi.product_id;
