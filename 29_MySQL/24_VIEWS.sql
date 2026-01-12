-- Views
-- a virual table based on the result-set of an SQL statement
-- The fields in view are fields from one or more real tables in the database
-- They're not real tables, but can be interacted with as if they were

-- The View Table while be update automaticly

-- Example 1 ---------------------------------
-- Create VIEW Table
CREATE VIEW employee_attendance AS
SELECT first_name, last_name
FROM employees;

-- You can For Example Sort it
SELECT * FROM employee_attendance AS
ORDER BY last_name ASC;

-- You can also DELETE VIEW TABLE
DROP VIEW employee_attendance;

-- Example 2 ---------------------------------
-- Add "email" column to customers
ALTER TABLE cutomers
ADD COLUMN email VARCHAR(50);
-- Update
UPDATE customers SET email = "FFish@gmail.com" WHERE customer_id = 1;
UPDATE customers SET email = "LLobster@gmail.com" WHERE customer_id = 2;
UPDATE customers SET email = "BBass@gmail.com" WHERE customer_id = 3;
UPDATE customers SET email = "PPuff@gmail.com" WHERE customer_id = 4;
-- Create VIEW from customers emails
CREATE VIEW customer_emails AS
SELECT email
FROM customers;
-- Add one more customer
INSERT INTO customers
VALUES (5, "pearl", "Krabs", NULL, "PKrabs@gmail.com");
-- The new customer email while be add automaticly to customer_emails view
SELECT * FROM customer_emails;
