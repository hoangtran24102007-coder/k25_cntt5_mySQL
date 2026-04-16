CREATE TABLE CART_ITEMS (
    CartItemID INT PRIMARY KEY AUTO_INCREMENT,
    UserID INT NOT NULL,
    ProductID INT NOT NULL,
    Quantity INT NOT NULL CHECK (Quantity > 0),
    AddedDate DATETIME DEFAULT NOW(),
    UNIQUE KEY unique_user_product (UserID, ProductID)
);

INSERT INTO CART_ITEMS (UserID, ProductID, Quantity)
VALUES (1, 10, 1)
ON DUPLICATE KEY UPDATE Quantity = Quantity + 1;

SELECT ProductID, Quantity, AddedDate
FROM CART_ITEMS
WHERE UserID = 1;

UPDATE CART_ITEMS
SET Quantity = 5
WHERE UserID = 1 AND ProductID = 10;

DELETE FROM CART_ITEMS
WHERE UserID = 1 AND ProductID = 10;