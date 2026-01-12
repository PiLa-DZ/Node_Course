-- ** How to SELECT data from a TABLE ========================
-- Filter Data
SELECT first_name, last_name
FROM employees;
-- Search ------------------------
SELECT *
FROM employees
WHERE employee_id = 6;
-- Search ------------------------
SELECT *
FROM employees
WHERE first_name = "Nabil";
-- Search ------------------------
SELECT *
FROM employees
WHERE hourly_pay >= 22;
-- Search ------------------------
SELECT *
FROM employees
WHERE hourly_pay <= 22;
-- Search ------------------------
SELECT *
FROM employees
WHERE hourly_pay != 22.5;
-- Search ------------------------
SELECT *
FROM employees
WHERE hourly_pay IS NULL;
-- Search ------------------------
SELECT *
FROM employees
WHERE hourly_pay IS NOT NULL;

