-- INDEX (BTree data structure)
-- Indexes are used to find values within a specific column more quickly
-- MySQL normally searches sequentially through a column
-- The longer the comumn, the more expensive the operation is
-- UPDATE takes more time, SELECT takes less time

-- Show all indexes of table
SHOW INDEXES FROM customers;

-- Chreat new index for last_name
CREATE INDEX last_name_index
ON customers(last_name);

-- Find last_name
SELECT * FROM customers
WHERE last_name = "Puff";

-- Create Multi INDEX
CREATE INDEX last_name_first_name_index
ON customers(last_name, first_name);

-- DELETE INDEX
ALTER TABLE customers
DROP INDEX last_name_index;
