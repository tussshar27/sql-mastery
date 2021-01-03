SELECT 
	CONCAT(first_name, ' ' , last_name) AS customer,
    points,
    CASE
		WHEN points > 3000 THEN 'GOLD'
        WHEN points BETWEEN 2000 AND 3000 THEN 'SILVER'
        WHEN POINTS < 2000 THEN 'BRONZE'
	END AS category
FROM customers