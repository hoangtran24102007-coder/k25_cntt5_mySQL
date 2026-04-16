CREATE TABLE ORDERS (
    OrderID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerName VARCHAR(100),
    OrderDate DATETIME,
    TotalAmount DECIMAL(18, 2),
    Status VARCHAR(20),
    IsDeleted BIT DEFAULT 0
);

INSERT INTO ORDERS (CustomerName, OrderDate, TotalAmount, Status) VALUES
(N'Nguyễn Văn A', '2023-01-10', 500000, 'Completed'),
(N'Khách hàng vãng lai', '2023-02-15', 1200000, 'Canceled'),
(N'Trần Thị B', '2023-05-20', 300000, 'Canceled'),
(N'Lê Văn C', '2024-01-05', 850000, 'Completed');

UPDATE ORDERS 
SET IsDeleted = 1 
WHERE Status = 'Canceled';

SELECT OrderID, CustomerName, OrderDate, TotalAmount, Status
FROM ORDERS 
WHERE IsDeleted = 0 
  AND Status = 'Completed';