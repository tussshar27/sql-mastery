SELECT *, quantity * unit_price AS "total price"
FROM order_items
where order_id = 2 AND "total price" < 19
ORDER BY "total price" DESC