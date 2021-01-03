-- in stored procedure, we have to give all the queries as a single unit to MySQL, So delimiter $$ is given with start and end to tell mysql that its a single unit.
-- changing the default DELIMITER ; to $$ to make single unit
DELIMITER $$	-- we can use anything in place of $$ such as //, --, etc. But $$ is the best practise for mysql developers.
CREATE PROCEDURE get_clients()
BEGIN
	SELECT * FROM clients;	-- use semicolon(;) cumpolsory, body of stored procedure
END $$

DELIMITER ;		-- Changing the default delimiter back to semicolon(;).
-- in sql server there is no need of changing the default delimiter.

-- -------------------------------------------------------------
-- calling the above made stored procedure
CALL get_clients();

-- -------------------------------------------------------------
-- WE can also create stored procedure using mysql workbench inbuilt feature
	-- right click on stored procedure and select "create stored procedure".