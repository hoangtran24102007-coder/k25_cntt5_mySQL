CREATE DATABASE thach_db;
USE thach_db;

CREATE TABLE users(
    userID INT PRIMARY KEY,
    userName VARCHAR(50) NOT NULL
);

CREATE TABLE orders (
    ordersId INT PRIMARY KEY,
    createdDate DATE NOT NULL DEFAULT CURRENT_DATE,
    moneyTotal DECIMAL(10,2) NOT NULL CHECK (moneyTotal >= 0),
    userID INT,
    FOREIGN KEY (userID) REFERENCES users(userID)
);