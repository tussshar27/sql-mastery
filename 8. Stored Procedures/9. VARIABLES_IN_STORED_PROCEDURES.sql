-- variable are used in stored procedure as a output parameter variable.
-- THERE ARE TWO TYPES OF VARIABLES:
-- 1. USER VARIABLE
	-- Eg. SET @variable1 = 0;				-- here SET keyword is used to define the user variable and @ is used as a prefix of variable name.
    -- it get disappears from the memory when the user disconnects MySql server/connection.
    
-- 2. LOCAL VARIABLE
	-- this type of variable becomes free after the execution of stored procedure is done.
    -- its used mostly for calculation purposes.
    DROP PROCEDURE IF EXISTS get_risk_factor
    DELIMITER $$
    CREATE PROCEDURE get_risk_factor()
    BEGIN
		DECLARE risk_factor DECIMAL(9,2) DEFAULT 0;			-- DIFINATION OF VARIABLE USING DECLARE KEYWORD
        DECLARE invoices_total DECIMAL(9,2);
        DECLARE invoices_count INT;
        
        SELECT COUNT(*), SUM(invoice_total)
        INTO invoices_total, invoices_count			-- INSERTING ABOVE SELECT CLAUSE VALUES INTO THESE VARIABLES.
        FROM invoices;
        
        SET risk_factor = invoices_total / invoices_count * 5;		-- ASSIGNING VALUE TO VARIABLE USING SET KEYWORD
        
        SELECT risk_factor;
    END $$
    DELIMITER ;
    
    -- ------------------------------------------------------
    CALL get_risk_factor;