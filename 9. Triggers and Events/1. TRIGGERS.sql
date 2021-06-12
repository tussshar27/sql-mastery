-- TRIGGERS: it is a block of statements that automatically gets executed before or after an INSERT, UPDATE or DELETE statement
DELIMITER $$
DROP TRIGGER IF EXISTS payments_after_insert;
CREATE TRIGGER payments_after_insert	-- tablename_before/after_insert/update/delete
	AFTER INSERT ON payments			-- we can also do BEFORE/AFTER INSERT/UPDATE/DELETE ON payments
    FOR EACH ROW						-- trigger to be runned for each affected new row
BEGIN
	UPDATE invoices
    SET payment_total = payment_total + NEW.amount		-- NEW keyword is used for new value and amount attribute is of payments table 
    WHERE invoice_id = NEW.invoice_id;					-- refering invoice_id of payments to invoices table.
    
    -- for triggers auditing
    INSERT INTO payments_audit
	VALUES (NEW.client_id, NEW.date, NEW.amount, 'Insert', NOW());
END $$
DELIMITER ;

-- NOTE: trigger is applied to payments table, so we can't update the payments table or else it will go in infinite loop.
-- same as if we use any trigger for a table then that table should not be modified.

-- -------------------------------------------------------------------------------
-- RUNNING THE QUERY
INSERT INTO payments
VALUES (DEFAULT, 5, 3, '2021-01-01', 10, 1);		-- DEFAULT means sql will assign its value automatically.