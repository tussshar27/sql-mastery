INSERT INTO orders (customer_id, order_date, status)	-- parent table
VALUES (1, '2020-02-01', 1);

INSERT INTO order_items 								-- child table
VALUES (LAST_INSERT_ID(), 1, 5, 1.21),					-- LAST_INSERT_ID() is used to get the last id of the row of parent table.
	   (LAST_INSERT_ID(), 2, 4, 4.65);