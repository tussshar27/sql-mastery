SELECT 
	order_id,
	-- IFNULL(shipper_id, 'Not assigned') AS shipper		-- if shipper_id have null values, so it will give string to all the null values as 'Not assigned'.
    COALESCE(shipper_id, comments, 'Not assigned') AS shipper	-- if shipper_id is null then it will search value in comments, and if its also null then the given string is printed in each null value row.
FROM orders