-- Whene Create new Table
CREATE TABLE products (
    product_id INT,
    product_name VARCHAR(25),
    price DECIMAL(4, 2) DEFAULT 0
);

-- After Create a Table
ALTER TABLE products
ALTER price SET DEFAULT 0;

INSERT INTO products (product_id, product_name)
VALUES (104, "straw"),
       (105, "napkin"),
       (106, "fork"),
       (107, "spoon");

-- Example 2 ------------------------------
CREATE TABLE transactions(
    transaction_id INT,
    amount DECIMAL(5, 2),
    transaction_date DATETIME DEFAULT NOW()
);

-- Test 1
INSERT INTO transactions (transaction_id, amount)
VALUES (1, 4.99);
-- Test 2
INSERT INTO transactions (transaction_id, amount)
VALUES (2, 5.99);
-- Test 3
INSERT INTO transactions (transaction_id, amount)
VALUES (3, 6.99);

