CREATE DATABASE ThankDb;
USE ThankDb;

CREATE TABLE products (
    product_id VARCHAR(10) PRIMARY KEY,
    product_name NVARCHAR(100) NOT NULL,
    size VARCHAR(5) NOT NULL,
    price DECIMAL(18, 2) CHECK (price > 0)
);

INSERT INTO products (product_id, product_name, size, price)
VALUES 
('P01', N'Áo sơ mi trắng', 'L', 250000),
('P02', N'Quần Jean xanh', 'M', 450000),
('P03', N'Áo thun Basic', 'XL', 150000),
('P04', N'Áo hoodie', 'L', 200000);

UPDATE products 
SET price = 400000 
WHERE product_id = 'P02';

UPDATE products 
SET price = price * 1.1;

DELETE FROM products 
WHERE product_id = 'P03';

SELECT * FROM products;

SELECT product_name, size 
FROM products;

SELECT * FROM products 
WHERE price > 300000;