USE sql_store;
SELECT *
FROM products p
WHERE NOT EXISTS (			-- NOT EXISTS
	SELECT product_id
    FROM order_items
    WHERE product_id = p.product_id
)