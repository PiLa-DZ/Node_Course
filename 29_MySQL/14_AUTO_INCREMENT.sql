-- Whene Create new Table
CREATE TABLE transactions(
    transaction_id INT PRIMARY KEY AUTO_INCREMENT,
    amount DECIMAL(5, 2),
);

-- Test 1
INSERT INTO transactions (amount)
VALUES (4.99);
-- Test 2
INSERT INTO transactions (amount)
VALUES (2.89);

-- Change the default of AUTO_INCREMENT
ALTER TABLE transactions
AUTO_INCREMENT = 1000;
