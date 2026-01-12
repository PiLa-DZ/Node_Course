-- SELF JOIN
-- join another copy of a table to itself
-- used to compare rows of the same table
-- helps to display a heirarchy of date

-- Add column to customars
ALTER TABLE customars
ADD referral_id INT;
-- Update referral_id
UPDATE customars
SET referral_id = 1
WHERE customar_id = 2;

-- Join
SELECT a.customer_id, a.first_name, a.last_name,
       CONACT(b.first_name," ", b.last_name) AS "referred_by"
FROM customers AS a
LEFT JOIN cutomers AS b
ON a.referral_id = b.customer_id;

-- Add another column to employees
ALTER TABLE employees ADD supervisor_id INT;
-- Update
UPDATE employees SET supervisor_id = 5 WHERE employee_id = 2;
UPDATE employees SET supervisor_id = 5 WHERE employee_id = 3;
UPDATE employees SET supervisor_id = 5 WHERE employee_id = 4;
UPDATE employees SET supervisor_id = 5 WHERE employee_id = 6;
UPDATE employees SET supervisor_id = 1 WHERE employee_id = 5;
-- Join
SELECT a.first_name, a.last_name,
       CONCAT(b.first_name, " ", b.last_name) AS "reports to"
FROM employees AS a
--_> LEFT JOIN employees AS b
INNER JOIN employees AS b
ON a.supervisor_id = b.employee_id;
