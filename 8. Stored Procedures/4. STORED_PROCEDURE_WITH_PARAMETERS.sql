DROP PROCEDURE IF EXISTS get_clients_with_state

DELIMITER $$
CREATE PROCEDURE get_clients_with_state(state CHAR(2))
BEGIN
	IF state IS NULL THEN				-- default vlaue
		SELECT * FROM clients;
	ELSE
		SELECT * FROM clients c
		WHERE c.state = state;
	END IF;
    -- alternative of the above IF block
-- 		SELECT * FROM clients c
-- 		WHERE c.state = IFNULL(state, c.state)			-- if parameter is NULL then c.state will be assigned.
END $$
DELIMITER ;

-- ------------------------------------------------------------------
-- CALLING THE PARAMETERISED STORED PROCEDURE
CALL get_clients_with_state(NULL)
-- CALL get_clients_with_state('CA')