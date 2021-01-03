-- OUTER JOIN are divided into two parts i.e LEFT and RIGHT outer joins
USE sql_store;
SELECT p.product_id, p.name, oi.quantity
FROM products p 
LEFT JOIN order_items oi		-- LEFT OUTER JOIN, here OUTER is optional
	ON p.product_id = oi.product_id
    
-- NOTE: outer join is used to get values which also does'nt satisfy the condition of inner join
-- here, left means the left or 1st table all rows are shown where as right means all the rows of right are shown
-- BEST PRACTISE: avoid right join as it will become complex to imagine right as well as left join in one query, so only use left join if right is not asked.