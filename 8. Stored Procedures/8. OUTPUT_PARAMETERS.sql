DROP PROCEDURE IF EXISTS get_unpaid_invoices_for_clients
DELIMITER $$
CREATE PROCEDURE get_unpaid_invoices_for_clients(
		client_id INT, -- only this parameter we have to enter not below parameters
		OUT invoices_count INT, -- its output parameter
		OUT invoices_total DECIMAL(9,2) -- its output parameter
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
