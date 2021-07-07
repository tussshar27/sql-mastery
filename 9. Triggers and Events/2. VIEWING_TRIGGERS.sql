-- Unfortunately in mysql workbench there is no display of triggers in schemas menu, so we have to view triggers manually by
SHOW TRIGGERS;		-- it will show all the created triggers in mysql.

SHOW TRIGGERS LIKE 'payments%';		-- to filter which table triggers to show.