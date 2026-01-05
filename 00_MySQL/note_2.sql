CREATE DATABASE myDB;
USE myDB;
DROP DATABASE myDB;

-- Make Database Read Only
ALTER DATABASE myDB READ ONLY = 1;

-- Create Table
CREATE TABLE employees (
	employee_id INT,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	hourly_pay DECIMAL(5, 2),
	hire_date DATE
)

-- Select teble
-- or Show teble
SELECT * FROM employees;

-- Rename the table
RENAME TABLE employees TO workers;

-- Delete the table
DROP TABLE employees;

-- Edit Table
ALTER TABLE employees
ADD phone_number VARCHAR(15);
-- -- Edit column name
ALTER TABLE employees
RENAME COLUMN phone_number TO email;
-- -- Edit column size
ALTER TABLE employees
MODIFY COLUMN email VARCHAR(100);
-- -- Move column
ALTER TABLE employees
MODIFY email VARCHAR(100)
AFTER last_name;
-- -- Move column to the firs index
ALTER TABLE employees
MODIFY email VARCHAR(100)
FIRST;
-- -- Delete column
ALTER TABLE employees
DROP COLUMN email;

