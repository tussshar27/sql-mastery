INSERT INTO orders (customer_id, order_date, status)	-- parent table	-- here order_id is AI so we are not poviding it, it will automatically generate for every new row.
VALUES (1, '2020-02-01', 1);

INSERT INTO order_items 								-- child table
VALUES (LAST_INSERT_ID(), 1, 5, 1.21),		-- eg. 12	  		-- LAST_INSERT_ID() is used to get the last order_id of the row of parent table.
	   (LAST_INSERT_ID(), 2, 4, 4.65);		-- eg. 12
-- if all the columns are used for insertion then there is no need to mention column names in insert query.
-- as per the condition actual order has when or more order items which is created as parent-child relationship.