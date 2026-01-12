-- Trigger = When an event happens, do something
--           ex. (INSERT, UPDATE, DELETE)
--           checkes date, handles errors, auditing tables

-- First let's add another column to employees table
ALTER TABLE employees
ADD COLUMN salary DECIMAL(10, 2) AFTER hourly_pay;
-- And update it
UPDATE employees SET salary = hourly_pay * 2080;
-- Now we cat create a trigger
CREATE TRIGGER before_houly_pay_update
BEFORE UPDATE ON employees
FOR EACH ROW
    SET NEW.salary = (NEW.hourly_pay * 2080);
-- You can also show all the triggers
SHOW TRIGGERS;

-- So when you update hourly_pay the trigger while be automaticly change the salary
UPDATE employees SET hourly_pay = 50
WHERE employee_id = 1;
-- Another Example
UPDATE employees SET hourly_pay = hourly_pay + 1;

-- The while be Update salary when create new employee
CREATE TRIGGER before_hourly_pay_insert
BEFORE INSERT ON employees
FOR EACH ROW
    SET NEW.salary = (NEW.hourly_pay * 2080);
-- Now let's add new employee to see if salary change automaticly
INSERT INTO employees
VALUES (7, "Sheldon", "Plankton", 10, NULL, "janitor", "2023-01-07", 5);
