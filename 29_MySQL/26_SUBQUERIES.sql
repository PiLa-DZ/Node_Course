-- subquery
-- a query within another query
-- query(subquery)

-- Example
SELECT first_name, last_name, hourly_pay,
       (SELECT AVG(houly_pay) FROM employees) AS avg_pay
FROM employees;

-- You can imagin like this
SELECT first_name, last_name, hourly_pay, 15.458333
FROM employees;

-- Example you can get greater the abrage hourly pay
SELECT first_name, last_name, hourly_pay
FROM employees
WHERE hourly_pay > (SELECT AVG(hourly_pay) FROM employees);

-- It's just like
SELECT first_name, last_name, hourly_pay
FROM employees
WHERE hourly_pay > 15.45;

-- Now let's work with customers and transactions tables
SELECT first_name, last_name FROM customers WHERE customer_id IN 
       (SELECT DISTINCT customer_id FROM transactions WHERE customer_id IN NOT NULL);
-- It's just like
SELECT first_name, last_name FROM customers WHERE customer_id IN 
       (1, 2, 3);
