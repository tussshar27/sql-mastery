-- A stored procedure is a prepared SQL code that you can save as a function, so the code can be reused over and over again.

-- So if you have an SQL query that you write over and over again, save it as a stored procedure, and then just call it to execute it.

-- You can also pass parameters to a stored procedure, so that the stored procedure can act based on the parameter value(s) that is passed.

-- -------------------------------------------------------------------------------------------------------------------------------------------

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
-- As writing down every time the DELIMITER is hectic, so we can also create stored procedure using mysql workbench inbuilt feature.
	-- right click on stored procedure and select "create stored procedure" and rename the function name and write queries and click on apply.
    -- to run the stored procedure, click on the flash icon on that stored procedure name.
    
