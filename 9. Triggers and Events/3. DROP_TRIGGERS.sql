DROP TRIGGER payments_after_delete;
-- the best practise is to have DROP query and CREATE query in same script.

-- Eg.
DROP TRIGGER IF EXISTS payments_after_insert;

