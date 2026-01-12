-- UNION combines the results of two or more SELECT statements
-- Here we have 2 tables (income, expenses)

-- Example 1 -----------------------------------------------
-- Join 2 Tables -------------------------------------------
SELECT * FROM income
UNION
SELECT * FROM expenses;

-- Example 2 -----------------------------------------------
-- ERORR: It Don't work with deferant amount of columns ----
SELECT * FROM employees
UNION
SELECT * FROM customers;

-- Example 3 -----------------------------------------------
-- Join 2 Tables with (first_name, last_name) --------------
SELECT first_name, last_name FROM employees
UNION
SELECT first_name, last_name FROM customers;

-- Example 4 -----------------------------------------------
-- Join 2 Tables with (first_name, last_name) --------------
-- Include Doublacated -------------------------------------
SELECT first_name, last_name FROM employees
UNION ALL
SELECT first_name, last_name FROM customers;
