UPDATE invoices
SET payment_total = 20, payment_date = '2019-02-27'		-- we can also assign payment_date = due_date
WHERE invoice_id = 1