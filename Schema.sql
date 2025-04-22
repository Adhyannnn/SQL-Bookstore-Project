
-- Create BookStore Database
CREATE DATABASE IF NOT EXISTS BookStore;
USE BookStore;

-- Create Books Table
DROP TABLE IF EXISTS Books;
CREATE TABLE Books(
    Book_ID INT PRIMARY KEY,
    Title VARCHAR(50),
    Author VARCHAR(20),
    Genre VARCHAR(30),
    Published YEAR,
    Price FLOAT,
    Stock INT
);

-- Create Customers Table
DROP TABLE IF EXISTS Customers;
CREATE TABLE Customers(
    Customer_ID INT PRIMARY KEY,
    Name VARCHAR(20),
    Email VARCHAR(20),
    Phone INT,    
    City VARCHAR(20),
    Country VARCHAR(20)
);

-- Create Orders Table
DROP TABLE IF EXISTS Orders;
CREATE TABLE Orders(
    Order_ID SERIAL PRIMARY KEY,
    Customer_ID INT REFERENCES Customers(Customer_ID),
    Book_ID INT REFERENCES Books(Book_ID),
    Order_Date DATE,
    Quantity INT,
    Total_Amount FLOAT
);

-- Select statements to check tables after creation
SELECT * FROM Books;
SELECT * FROM Customers;
SELECT * FROM Orders;

-- Note: Data import from CSV files is assumed to be done via the Data Import Wizard
