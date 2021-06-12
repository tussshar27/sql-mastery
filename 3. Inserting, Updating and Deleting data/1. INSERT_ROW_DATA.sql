INSERT INTO 
products (				-- note: if u deleted previous rows so the next rows id will start from that deleted rows id as mysql remembers everything.
	name, 				-- here, we are not giving id values as its already PK, NN, AI value.
    quantity_in_stock, 
    unit_price)	
VALUES ('PEN', 10, 20),
	   ('Eraser', 5, 10),
       ('Pencil', 15, 15);