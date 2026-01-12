-- Stored procedure = is prepared SQL code that you can save
--                    great if there's a query that you write often

-- It's like a block of code you can call it any time in your code
-- Example 1 ---------------------------------
DELIMITER $$
CREATE PROCEDURE get_customers()
BEGIN
    SELECT * FROM customers;
END $$
DELIMITER ;

-- To use this block of code
CALL get_customers();
-- To DELETE it
DROP PROCEDURE get_customers;

-- Example 2 ---------------------------------
-- You can also use like argument
DELIMITER $$
BEGIN
CREATE PROCEDURE find_customer(IN id INT)
    SELECT * FROM customers
    WHERE customer_id = id;
END $$
DELIMITER ;
-- So now you can find customer by id
CALL find_customer(1);
CALL find_customer(2);
CALL find_customer(3);
CALL find_customer(4);
-- Example 3 ---------------------------------
-- Find customer by first name and last name
DELEMITER $$
CREATE PROCEDURE find_customer_by_full_name (IN f_name VARCHAR(50), IN l_name VARCHAR(50))
BEGIN
    SELECT * FROM customers
    WHERE first_name = f_name AND last_name = l_name;
END $$
DELEMITER ;
-- Call it
CALL find_customer_by_full_name("Larry", "Lobster");
