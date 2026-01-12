-- ROLLUP, extension of the GROUP BY clause
-- produces another row and shows the GRAND TOTAL (super-aggregate value)

-- Show Another row in the bottom show the sum of all the sems
SELECT SUM(amount), order_date FROM transactions
GROUP BY order_date WITH ROLLUP;
