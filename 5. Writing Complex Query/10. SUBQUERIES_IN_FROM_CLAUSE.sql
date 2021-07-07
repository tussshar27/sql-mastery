USE sql_invoicing;
SELECT *
FROM (									-- 
		SELECT 
			c.client_id,
			c.name,
			(SELECT SUM(invoice_total) FROM invoices WHERE client_id = c.client_id) AS total_sales,
			(SELECT AVG(invoice_total) FROM invoices) AS average,
			(SELECT total_sales - average) AS difference
		FROM clients c
    ) AS sales_summary	-- alias is compulsory whether you use it or not in FROM clause subquery.
WHERE total_sales IS NOT NULL

-- FROM clause subquery is used to generate virtual table in memory in which we can perform all the operations as like a normal table in it.
-- As this above query becomes more complex, views are used instead of this.