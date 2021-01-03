SELECT *
FROM order_items
WHERE order_id = 6 AND unit_price * quantity > 30
-- Q) is order id = 6 and total price > 30