-- You can add "NOT NULL" whene you create a table
CREATE TABLE products (
    product_id INT,
    product_name VARCHAR(25),
    price DECIMAL(4, 2) NOT NULL
);

-- If you forget to add "NOT NULL" whene you create a tabel
ALTER TABLE products
MODIFY price DECIMAL(4, 2) NOT NULL;
