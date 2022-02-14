TRUNCATE TABLE employees
-- Truncate deletes all the records in a table.
-- TRUNCATE can't ROLLBACK as of DELETE command.
-- so, Truncate is faster than delete command but also its more risky since you can't rollback.
-- TRUNCATE is DDL command and all DDL command have Auto-commit feature. 
