DROP PROCEDURE IF EXISTS get_payment;
DELIMITER $$
CREATE PROCEDURE get_payment(client_id INT, payment_method_id TINYINT)
BEGIN
	SELECT * FROM payments p
	WHERE p.client_id = IFNULL(client_id, p.client_id) AND p.payment_method = IFNULL(payment_method_id, p.payment_method); 
    -- if client_id is null then p.client_id argument will be assigned, same as for payment_method_id
END $$
DELIMITER ;

-- -----------------------------------------------------------
-- calling stored procedures
CALL get_payment(5,2)
-- CALL get_payment(NULL, NULL)