-- We have many functions in MySQL out theyr

-- Example 1 ------------------------------
SELECT COUNT(amount)
FROM transactions;
-- Example 2 ------------------------------
SELECT COUNT(amount) AS count
FROM transactions;
-- Example 3 ------------------------------
SELECT COUNT(amount) AS "Today's transactions"
FROM transactions;
-- Example 4 ------------------------------
SELECT MAX(amount) AS maximum
FROM transactions;
-- Example 5 ------------------------------
SELECT MIN(amount) AS minimum
FROM transactions;
-- Example 6 ------------------------------
SELECT AVG(amount) AS average
FROM transactions;
-- Example 7 ------------------------------
SELECT SUM(amount) AS sum
FROM transactions;
-- Example 8 ------------------------------
SELECT CONCAT(first_name, " ", last_name) AS full_name
FROM employees;
