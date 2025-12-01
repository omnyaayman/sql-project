
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    City VARCHAR(50)
);


CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Price DECIMAL(10,2)
);


CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    ProductID INT,
    Quantity INT,
    OrderDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);


INSERT INTO Customers VALUES
(1, 'Omina', 'Cairo'),
(2, 'Yasmin', 'Alex'),
(3, 'Ahmed', 'Giza');


INSERT INTO Products VALUES
(1, 'Laptop', 15000),
(2, 'Keyboard', 300),
(3, 'Mouse', 150);


INSERT INTO Orders VALUES
(1, 1, 1, 1, '2024-01-01'),
(2, 1, 2, 2, '2024-01-03'),
(3, 2, 3, 1, '2024-01-04'),
(4, 3, 1, 1, '2024-01-05');


SELECT COUNT(*) AS TotalCustomers FROM Customers;

SELECT SUM(p.Price * o.Quantity) AS TotalRevenue
FROM Orders o
JOIN Products p ON o.ProductID = p.ProductID;

SELECT p.ProductName, SUM(o.Quantity) AS TotalSold
FROM Orders o
JOIN Products p ON o.ProductID = p.ProductID
GROUP BY p.ProductName
ORDER BY TotalSold DESC;

SELECT c.CustomerName, SUM(p.Price * o.Quantity) AS TotalSpending
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID
JOIN Products p ON o.ProductID = p.ProductID
GROUP BY c.CustomerName
ORDER BY TotalSpending DESC
LIMIT 1;
