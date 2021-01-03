DROP PROCEDURE IF EXISTS get_unpaid_invoices_for_clients
DELIMITER $$
CREATE PROCEDURE get_unpaid_invoices_for_clients(
		client_id INT, 
		OUT invoices_count INT, 
		OUT invoices_total DECIMAL(9,2)
    )
BEGIN
	SELECT COUNT(*), SUM(invoice_total)
    INTO invoices_count, invoices_total
	FROM invoices i
	WHERE i.client_id = client_id AND payment_total = 0;
END $$
DELIMITER ;
-- ------------------------------------------------------------
CALL get_unpaid_invoices_for_clients(3)
