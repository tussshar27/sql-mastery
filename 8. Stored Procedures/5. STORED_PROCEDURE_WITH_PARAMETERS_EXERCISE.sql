DROP PROCEDURE IF EXISTS get_invoices_by_client
DELIMITER $$
CREATE PROCEDURE get_invoices_by_client(id INT)
BEGIN
	SELECT *
	FROM invoices
	WHERE client_id = id;
END $$
DELIMITER ;

-- --------------------------------------------------------------
-- CALLING THE ABOVE STORED PROCEDURE.
CALL get_invoices_by_client(5)
