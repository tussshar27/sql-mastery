-- Q) deleting the row
DELIMITER $$
DROP TRIGGER IF EXISTS payments_after_delete;
CREATE TRIGGER payments_after_delete
	AFTER DELETE ON payments
    FOR EACH ROW
BEGIN
-- 	   DELETE FROM invoices
--     WHERE invoice_id = OLD.invoice_id;		-- OLD keyword because the invoice_id value is already present in table and we have to delete that.

    UPDATE invoices
    SET payment_total = payment_total - OLD.amount		-- NEW keyword is used for new value and amount attribute is of payments table 
    WHERE invoice_id = OLD.invoice_id;					-- refering invoice_id of payments to invoices table.
    
	-- for triggers auditing means saving the log details i.e to store who came and changed the data with all the details.
	INSERT INTO payments_audit
	VALUES (OLD.client_id, OLD.date, OLD.amount, 'Delete', NOW());		-- indicate that the row was deleted.
    -- OLD is used to access the deleted row
    
END $$
DELIMITER ;

-- ---------------------------------------------------
DELETE FROM payments
WHERE invoice_id = 3;	-- it will store in payments_audit table after running this query.