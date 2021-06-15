USE sql_store;		-- present database

SELECT *
FROM order_items oi		-- table of the current database
JOIN sql_inventory.products p	-- table of the other database i.e sql_inventory
ON oi.product_id = p.product_id