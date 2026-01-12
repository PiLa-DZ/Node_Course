-- ** How to INSERT rows into a TABLE ========================
-- Create Row
INSERT INTO employees
VALUES (1, "Nabil", "Dahman", 20.50, "2026-01-08");

-- Create Many Row
INSERT INTO employees
VALUES (2, "A", "a", 20.50, "2026-01-08"),
       (3, "B", "b", 21.50, "2026-01-09"),
       (4, "C", "c", 22.50, "2026-01-10"),
       (5, "D", "d", 23.50, "2026-01-11");

-- Create Rows with specific Column
INSERT INTO employees (employee_id, first_name, last_name)
VALUES (6, "E", "e");

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

-- ** How to UPDATE and DELETE data from a TABLE =============
-- --------------------------------
UPDATE employees
SET hourly_pay = 10.25
WHERE employee_id = 6;
-- --------------------------------
UPDATE employees
SET hourly_pay = 10.25,
    hire_date = "2026-02-01"
WHERE employee_id = 6;
-- --------------------------------
UPDATE employees
SET hourly_pay = NULL
WHERE employee_id = 6;
-- --------------------------------
DELETE FROM employees
WHERE employee_id = 6;
