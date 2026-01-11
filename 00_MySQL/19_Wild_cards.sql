-- Wild card characters % _
-- Used to substitute one or more characters in a string

-- Example 1 ---------------------------
-- Start with characters "s"
SELECT * FROM employees
WHERE first_name LIKE "s%";

-- Example 2 ---------------------------
-- Start with characters "sp"
SELECT * FROM employees
WHERE first_name LIKE "sp%";

-- Example 3 ---------------------------
-- Start with characters "2023"
SELECT * FROM employees
WHERE hire_date LIKE "2023%";

-- Example 4 ---------------------------
-- End with characters "2023"
SELECT * FROM employees
WHERE last_name LIKE "%r";

-- Example 5 ---------------------------
-- Find one random character folow by "ook"
SELECT * FROM employees
WHERE job LIKE "_ook";

-- Example 6 ---------------------------
-- Find two random character arownd "ook"
SELECT * FROM employees
WHERE job LIKE "_ook_";

-- Example 7 ---------------------------
-- Find all month match
SELECT * FROM employees
WHERE hire_date LIKE "____-01-__";

-- Example 8 ---------------------------
-- Find all day in the month match
SELECT * FROM employees
WHERE hire_date LIKE "____-__-02";

-- Example 9 ---------------------------
-- Find any name with secend character is "a"
SELECT * FROM employees
WHERE job LIKE "_a%";
