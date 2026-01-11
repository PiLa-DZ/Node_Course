-- You can add "UNIQUE" whene you create a table
CREATE TABLE products (
    product_id INT,
    product_name VARCHAR(25) UNIQUE,
    price DECIMAL(4, 2)
);

-- If you forget to add "UNIQUE" whene you create a tabel
ALTER TABLE products
ADD CONSTRAINT
UNIQUE(product_name);
