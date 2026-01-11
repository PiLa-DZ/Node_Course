-- Whene Create New 2 TABLE ==========================================
-- -- TABLE 1 --------------------------------------------------------
CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);

INSERT INTO customers (first_name, last_name)
VALUES ("Fred", "Fish"),
       ("Larry", "Lobster"),
       ("Bubble", "Bass");

-- -- TABLE 2 --------------------------------------------------------
CREATE TABLE transactions (
    transaction_id INT PRIMARY KEY AUTO_INCREMENT,
    amount DECIMEL(5, 2),
    customer_id INT,
    FOREIGN KEY(customer_id) REFERENCES customers(customer_id)

);

-- After Create ======================================================
ALTER TABLE transactions
ADD CONSTRAINT fk_customer_id
FOREIGN KEY(customer_id) REFERENCES customers(customer_id)
