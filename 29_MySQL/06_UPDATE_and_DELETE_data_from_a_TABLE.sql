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
