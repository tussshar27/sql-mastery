USE sql_store;
SELECT *, quantity * unit_price AS "total price"
FROM order_items
where order_id = 2 AND "total price" < 19
ORDER BY "total price" DESC

-- The ORDER BY keyword is used to sort the result-set in ascending or descending order.
-- The ORDER BY keyword sorts the records in ascending order by default. To sort the records in descending order, use the DESC keyword.