DROP PROCEDURE IF EXISTS get_payment;
DELIMITER $$
CREATE PROCEDURE get_payment(client_id INT, payment_method_id TINYINT)	-- This are parameters of a function -- TINYINT takes 1byte of memory where as INT takes 4bytes of memory.
-- search for "Mysql int size" on google for more info.
BEGIN
	SELECT * FROM payments p
	WHERE p.client_id = IFNULL(client_id, p.client_id) AND p.payment_method = IFNULL(payment_method_id, p.payment_method); 
    -- if the first value is null then the IFNULL function will return the second value.
    -- if client_id is null then p.client_id argument will be assigned, same as for payment_method_id.
    
END $$
DELIMITER ;

-- -----------------------------------------------------------
-- calling stored procedures
CALL get_payment(5,2)	-- This are arguments
-- CALL get_payment(NULL, NULL)