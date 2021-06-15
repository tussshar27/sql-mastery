USE sql_store;
SELECT *
FROM customers
ORDER BY points DESC
LIMIT 10	-- limit clause is used to fetch number of rows as a output. eg. 10 rows will be fetched now.
