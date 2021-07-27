-- ADD, MODIFY, DROP COLUMN AFTER CREATING A TABLE
ALTER TABLE customers
	ADD last_name VARCHAR(50) NOT NULL AFTER first_name,
    ADD city VARCHAR(50) NOT NULL DEFAULT ' ',
    DROP points
    ;

ALTER TABLE orders
	ADD PRIMARY KEY(orders_id),	-- ADDING PRIMARY KEY
    DROP PRIMARY KEY,			-- DROPING PRIMARY KEY
    DROP FOREIGN KEY fk_orders_customers,
    ADD FOREIGN KEY fk_orders_customers (customers_id)	-- no comma in foreign key
		REFERENCES customers (customer_id)
        ON UPDATE CASCADE
        ON DELETE NO ACTION
        ;
    