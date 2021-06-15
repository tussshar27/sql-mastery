USE sql_store;
SELECT *		-- composite primary key is the combination of more than one primary key columns in a single table.
FROM order_items oi
JOIN order_item_notes oin
	ON oi.order_Id = oin.order_Id
	AND oi.product_id = oin.product_id	-- we have multiple conditions to join table in compound joins.
    -- compound join is used when there is duplicate rows in primary key column of a table,
    -- so to make them unique more than one primary key columns are joined.
    -- AND operator is used in compound join.