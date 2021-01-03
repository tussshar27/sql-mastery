SELECT
	order_id,
    CASE							-- CASE operator is used for multi expression
		WHEN YEAR(order_date) = YEAR(NOW()) THEN 'ACTIVE'
        WHEN YEAR(order_date) = YEAR(NOW()) - 1 THEN 'LAST YEAR'
        WHEN YEAR(order_date) < YEAR(NOW()) - 1 THEN 'ARCHIVED'
        ELSE 'FUTURE'
	END AS category
FROM orders