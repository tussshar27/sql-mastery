-DROP PROCEDURE IF EXISTS make_payment
DELIMITER $$
CREATE PROCEDURE make_payment(invoice_id INT, payment_amount DECIMAL(9,2), payment_date DATE)     -- DECIMAL datatype is used for '.'
BEGIN
	IF payment_amount <= 0 THEN			-- parameter validation
    SIGNAL SQLSTATE '22003' SET MESSAGE_TEXT = 'INVALID PAYMENT AMOUNT';	
    -- SIGNAL means throwing exception,
    -- '22003' is the error code, search on google for sqlstate error codes and u will find all the different type of errors.
	END IF;
	UPDATE invoices i
    SET i.payment_total = payment_amount, i.payment_date = payment_date
    WHERE i.invoice_id = invoice_id;
END $$
DELIMITER ;

-- ---------------------------------------------------------------------------------------
-- calling the stored procedure
CALL make_payment(2, 100, '2019-03-27');
CALL make_payment(2, -100, '2019-03-27');