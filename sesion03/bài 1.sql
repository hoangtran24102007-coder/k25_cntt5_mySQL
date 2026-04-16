CREATE TABLE products(
	ProductID INT PRIMARY KEY,
	ProductName VARCHAR(100) NOT NULL,
	Category VARCHAR(50) NOT NULL,
	OriginalPrice DECIMAL(18, 2)
);
INSERT INTO PRODUCTS (ProductID, ProductName, Category, OriginalPrice)
VALUES
(1, 'iPhone 15', 'Electronics', 20000000),
(2, 'Samsung Refrigerator', 'Electronics', 15000000),
(3, 'Water Spinach', 'Food', 10000),
(4, 'Filtered Fresh Milk 4', 'Food', 28000);
UPDATE PRODUCTS
SET OriginalPrice = OriginalPrice * 0.9
WHERE ProductID;