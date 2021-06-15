USE sql_store;
SELECT *
FROM orders
WHERE shipped_date IS NULL
-- WHERE shipped_date IS NOT NULL