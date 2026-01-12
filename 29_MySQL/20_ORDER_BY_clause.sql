-- Sort all employees by last_name
SELECT * FROM employees
ORDER BY last_name;

-- Reverse Sort
SELECT * FROM employees
ORDER BY last_name DESC;

-- Sort all employees by (amount, customer) column
-- If 2 column is the same amount sort by customer column
SELECT * FROM employees
ORDER BY amount, customer_id;
