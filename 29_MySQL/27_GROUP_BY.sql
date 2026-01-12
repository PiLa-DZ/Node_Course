-- GROUP BY - aggregate all rows by a specific column
--            often used with aggregate function
--            ex. SUM(), MAX(), MIN(), AVG(), COUNT()

-- Example 1 ---------------------------------------
-- get how mutch money made per day
SELECT SUM(amount), order_date FROM transactions
GROUP BY order_date;

-- Example 2 ---------------------------------------
-- Get max hour how mutch money made in the day
SELECT MAX(amount), order_date FROM transactions
GROUP BY order_date;

-- Example 3 ---------------------------------------
-- Get min hour how mutch money made in the day
SELECT MIN(amount), order_date FROM transactions
GROUP BY order_date;
