SELECT *
FROM order_items oi
JOIN order_item_notes oin
	ON oi.order_Id = oin.order_Id
	AND oi.product_id = oin.product_id