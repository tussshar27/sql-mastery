-- functions are similar to stored procedures but the main difference is function gives only single value in mysql unlike stored procedures which gives table.
-- Userdefined function
DROP FUNCTION IF EXISTS get_risk_factor_for_client
DELIMITER $$
CREATE FUNCTION get_risk_factor_for_client(client_id INT)
RETURNS INTEGER
-- below are the 3 attributes of a function, we have to keep which suits as per our code.
-- DETERMINISTIC		-- it always return same calculated output for same input
READS SQL DATA		-- used when SELECT statement is present in a function
-- MODIFIES SQL DATA	-- used when INSERT, UPDATE, DELETE statement is present in a function
BEGIN
	DECLARE risk_factor DECIMAL(9,2) DEFAULT 0;			-- DIFINATION OF VARIABLE USING DECLARE KEYWORD
	DECLARE invoices_total DECIMAL(9,2);
    DECLARE invoices_count INT;
        
	SELECT COUNT(*), SUM(invoice_total)
	INTO invoices_count, invoices_total			-- INSERTING ABOVE SELECT CLAUSE VALUES INTO THESE VARIABLES.
	FROM invoices i
    WHERE i.client_id = client_id;
        
	SET risk_factor = invoices_total / invoices_count * 5;		-- ASSIGNING VALUE TO VARIABLE USING SET KEYWORD
        
	RETURN IFNULL(risk_factor, 0);		-- it will set null values to 0.
END $$
DELIMITER ;

-- ------------------------------------------------------------------------------------
-- now we can use the above executed function as like a inbuilt function in sql.
SELECT
	client_id,
    name,
    get_risk_factor_for_client(client_id)
FROM clients;