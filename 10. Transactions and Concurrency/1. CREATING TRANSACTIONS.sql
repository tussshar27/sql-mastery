-- Transactions is a group of SQL statements that represent a single unit of work.
-- eg. debit operation of one account and credit operation on other account form as a single unit of work in bank transaction.
-- ACID properties of Transaction:
-- Atomicity
-- Consistency
-- Isolation
-- Durability
USE sql_store;

START TRANSACTION;

INSERT INTO orders (customer_id, order_date, status)
VALUES (1, '2021-01-01', 1);

INSERT INTO order_items
VALUES (LAST_INSERT_ID(), 1, 1, 1);

-- both the above INSERT statement are in single unit of transaction, 
-- suppose if the first INSERT statement get executed and second INSERT not then SQL rollback the first INSERT statement.
COMMIT; 
