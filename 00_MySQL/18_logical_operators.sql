-- Step 1 add column to a table
ALTER TABLE employees
ADD COLUMN job VARCHAR(25) AFTER hourly_pay;

-- Step 2 update
UPDATE emloyees SET job = "manager" WHERE employee_id = 1;
UPDATE emloyees SET job = "cashir" WHERE employee_id = 2;
UPDATE emloyees SET job = "cook" WHERE employee_id = 3;
UPDATE emloyees SET job = "cook" WHERE employee_id = 4;
UPDATE emloyees SET job = "asst. manager" WHERE employee_id = 5;
UPDATE emloyees SET job = "janitor" WHERE employee_id = 6;

-- Example 1 -------------------------------------
SELECT * FROM employees
WHERE hire_date < "2023-01-5" AND job = "cook";
-- Example 2 -------------------------------------
SELECT * FROM employees
WHERE job = "cook" or job = "cashir";
-- Example 3 -------------------------------------
SELECT * FROM employees
WHERE NOT job = "manager";
-- Example 3 -------------------------------------
SELECT * FROM employees
WHERE NOT job = "manager" AND NOT job = "asst. manager";
-- Example 4 -------------------------------------
SELECT * FROM employees
WHERE hire_date BETWEEN "2023-01-04" AND "2023-01-07";
-- Example 4 -------------------------------------
SELECT * FROM employees
WHERE job IN ("cook", "cashier", "janitor");
