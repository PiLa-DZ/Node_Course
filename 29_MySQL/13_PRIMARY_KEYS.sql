-- Whene Create new Table
CREATE TABLE transactions(
    transaction_id INT PRIMARY KEY,
    amount DECIMAL(5, 2),
);

-- After Create a Table
ALTER TABLE transactions
ADD CONSTRAINT
PRIMARY KEY(transaction_id);
