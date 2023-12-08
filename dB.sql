-- Create Database
CREATE DATABASE IF NOT EXISTS SampleDB;

-- Use Database
USE SampleDB;

-- Create Users Table
CREATE TABLE Users (
    UserID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Age INT
);

-- Insert Data
INSERT INTO Users (UserID, FirstName, LastName, Age)
VALUES
    ('John', 'Doe', 25),
    ('Jane', 'Smith', 30),
    ('Bob', 'Johnson', 22);

-- Select Data
SELECT * FROM Users;

-- Update Data
UPDATE Users SET Age = 26 WHERE UserID = 1;

-- Delete Data
DELETE FROM Users WHERE UserID = 3;

-- Select with WHERE Clause
SELECT * FROM Users WHERE Age > 25;

-- Count Rows
SELECT COUNT(*) FROM Users;

-- Order By
SELECT * FROM Users ORDER BY Age DESC;

-- AND, OR
SELECT * FROM Users WHERE Age > 25 AND FirstName = 'John';

-- LIKE Operator
SELECT * FROM Users WHERE LastName LIKE 'D%';

-- IN Operator
SELECT * FROM Users WHERE Age IN (25, 30);

-- using Null Values
INSERT INTO Users (UserID, FirstName, LastName, Age)
VALUES ('Alice', NULL, 28);

-- Aliases
SELECT FirstName AS First, LastName AS Last FROM Users;

-- Join
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    UserID INT,
    Product VARCHAR(50),
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

INSERT INTO Orders (OrderID, UserID, Product)
VALUES (101, 1, 'Laptop'), (102, 2, 'Phone');

SELECT Users.FirstName, Users.LastName, Orders.Product
FROM Users
JOIN Orders ON Users.UserID = Orders.UserID;
--