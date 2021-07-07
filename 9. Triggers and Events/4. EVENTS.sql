-- An event is a task or block of SQL code that gets executed according to a schedule. like everyday on 10am or like in months, years and so on.
-- from event we can automate database maintenance task such as deleting data, copying data from one table to another table, etc.

-- now before creating events, we have to turn ON myql Event Scheduler; it is a process that runs in background for the event.
-- SHOW VARIABLES;	-- this gives all the system variables available as output.

-- SHOW VARIABLES LIKE 'event%';	-- shows variable with name start with event.
-- SET GLOBAL event_scheduler = ON;	-- if the event_scheduler is OFF then we can turn it ON

-- CREATING EVENT
CREATE EVENT yearly_delete_stale_audit_rows
ON SCHEDULE
	-- AT '2019-05-01'	-- EVENT FOR ONLY ONCE.
    -- EVERY 2 HOUR STARTS '2019-01-01' ENDS '2029-01-01'
    -- EVERY 1 DAY STARTS '2019-01-01' ENDS '2029-01-01'
    EVERY 1 YEAR STARTS '2019-01-01' ENDS '2029-01-01'
    -- above STARTS and ENDS are optional
DO BEGIN
	DELETE FROM payments_audit
    WHERE action_date < NOW() - INTERVAL 1 YEAR
END $$

DELIMITER ;    

-- -----------------------------------
-- to view the events
SHOW EVENTS;