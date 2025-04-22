
-- Retrieve all books in the "Fiction" genre
SELECT * FROM Books WHERE Genre = "Fiction";

-- Find books published after the year 1950
SELECT * FROM Books WHERE Published > 1950
ORDER BY Published ASC;

-- List all customers from Canada
SELECT * FROM Customers WHERE Country = "Canada";

-- Show orders placed in November 2023
SELECT * FROM Orders WHERE Order_Date BETWEEN '2023-11-01' AND '2023-11-30';

-- Retrieve the total stock of books available
SELECT SUM(Stock) AS Total_Stocks FROM Books;

-- Find the details of the most expensive book
SELECT * FROM Books ORDER BY Price DESC LIMIT 1;

-- Show all customers who ordered more than 1 quantity of a book
SELECT * FROM Orders WHERE Quantity > 1 ORDER BY Quantity;

-- Retrieve all orders where the total amount exceeds $20
SELECT * FROM Orders WHERE Total_Amount > 20;

-- List all genres available in the Books table
SELECT Genre FROM Books GROUP BY Genre;

-- Find the book with the lowest stock
SELECT * FROM Books ORDER BY Stock LIMIT 1;

-- Calculate the total revenue generated from all orders
SELECT ROUND(SUM(Total_Amount)) AS Total_Revenue_Generated FROM Orders;

-- Retrieve the total number of books sold for each genre
SELECT Genre, SUM(Quantity) AS Total_Sold
FROM Orders o
JOIN Books b ON o.Book_ID = b.Book_ID
GROUP BY Genre;

-- List each customer’s full name and the titles of books they’ve purchased
SELECT c.Name, b.Title
FROM Orders o
JOIN Customers c ON o.Customer_ID = c.Customer_ID
JOIN Books b ON o.Book_ID = b.Book_ID;

-- Show the top 5 most sold books based on total quantity ordered
SELECT Title, SUM(o.Quantity) AS Total_Quantity
FROM Books b
JOIN Orders o ON b.Book_ID = o.Book_ID
GROUP BY Title
ORDER BY Total_Quantity DESC
LIMIT 5;

-- Display each author's name along with the total number of their books sold
SELECT Author, SUM(o.Quantity) AS Total_Sold
FROM Books b
JOIN Orders o ON b.Book_ID = o.Book_ID
GROUP BY Author;

-- Get the names and emails of customers who have purchased books from the "Fiction" genre
SELECT c.Name, c.Email
FROM Customers c
JOIN Orders o ON c.Customer_ID = o.Customer_ID
JOIN Books b ON o.Book_ID = b.Book_ID
WHERE b.Genre = "Fiction";

-- Show detailed order information including customer name, book title, quantity, and order date
SELECT c.Name, b.Title, o.Quantity, o.Order_Date
FROM Customers c
JOIN Orders o ON c.Customer_ID = o.Customer_ID
JOIN Books b ON o.Book_ID = b.Book_ID;

-- Calculate the total amount each customer has spent
SELECT c.Customer_ID, c.Name, SUM(b.Price * o.Quantity) AS Total_Spent, c.Email
FROM Customers c
JOIN Orders o ON c.Customer_ID = o.Customer_ID
JOIN Books b ON o.Book_ID = b.Book_ID
GROUP BY c.Customer_ID, c.Name, c.Email;

-- List genres that haven’t had any sales/orders yet
SELECT DISTINCT b.Genre
FROM Books b
LEFT JOIN Orders o ON b.Book_ID = o.Book_ID
WHERE o.Order_ID IS NULL;
