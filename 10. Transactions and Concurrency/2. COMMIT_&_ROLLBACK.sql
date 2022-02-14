-- eg. insert, update or delete statements.
INSERT INTO employees values('tushar',01);
INSERT INTO employees values('ravi',02);

COMMIT;
-- now the transaction is commited so if u rollback then also it won't get deleted.
ROLLBACK; -- rollback means undo.
