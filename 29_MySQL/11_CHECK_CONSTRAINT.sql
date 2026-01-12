-- Whene Create new Table
CREATE TABLE employees (
    employee_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    hourly_pay DECIMAL(5, 2),
    hire_date DATE,
    CONSTRAINT check_hourly_pay CHECK (hourly_pay >= 10.00)
);

-- After Create a Table
ALTER TABLE employees
ADD CONSTRAINT check_hourly_pay CHECK(hourly_pay >= 10.00);

-- Delete
ALTER TABLE employees
DROP CHECK check_hourly_pay;
