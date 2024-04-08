CREATE DATABASE racine;
USE racine;

CREATE TABLE Customers (
    CustomerId INT PRIMARY KEY AUTO_INCREMENT,
    CustomerName VARCHAR(255),
    ContactName VARCHAR(255),
    `Address` VARCHAR(255),
    City VARCHAR(255),
    PostalCode VARCHAR(20),
    Country VARCHAR(100),
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Order_tb (
    OrderId INT PRIMARY KEY AUTO_INCREMENT,
    OrderDate DATE,
    TotalAmount DECIMAL(10, 2),
    CustomerId INT,
    FOREIGN KEY (CustomerId) REFERENCES Customers(CustomerId),
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO Customers
    (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES
    ('Customer 1', 'Contact 1', 'Address 1', 'City 1', '12345', 'USA'),
    ('Customer 2', 'Contact 2', 'Address 2', 'City 2', '23456', 'Canada'),
    ('Customer 3', 'Contact 3', 'Address 3', 'City 3', '34567', 'UK'),
    ('Customer 4', 'Contact 4', 'Address 4', 'City 4', '45678', 'Australia'),
    ('Customer 5', 'Contact 5', 'Address 5', 'City 5', '56789', 'Germany'),
    ('Customer 6', 'Contact 6', 'Address 6', 'City 6', '67890', 'France'),
    ('Customer 7', 'Contact 7', 'Address 7', 'City 7', '78901', 'Japan'),
    ('Customer 8', 'Contact 8', 'Address 8', 'City 8', '89012', 'China'),
    ('Customer 9', 'Contact 9', 'Address 9', 'City 9', '90123', 'Brazil'),
    ('Customer 10', 'Contact 10', 'Address 10', 'City 10', '01234', 'Mexico'),
    ('Customer 99', 'Contact 99', 'Address 99', 'City 99', '99999', 'South Africa'),
    ('Customer 100', 'Contact 100', 'Address 100', 'City 100', '00000', 'India');

select distinct country from customers;
SELECT COUNT(DISTINCT country) FROM customers;

INSERT INTO customers(CustomerName, ContactName, Address, City, PostalCode, Country) VALUES
('Grace', 'Grace Bisimwa', 'Goma', 'Goma Ville', '+243Goma', 'Congo'),
('Diane', 'Diane Uwase', 'Gisenyi', 'Gisenyi', '8430', 'Rwanda'),
('Jeanne', 'Jeanne Claire', 'Kigali', 'Kigali Ville', '00234', 'Rwanda'),
('Grace', 'Grace Bisimwa', 'Goma', 'Goma Ville', '+243Goma', 'Burindi');

SELECT * FROM customers ORDER BY CustomerName ASC, City DESC;

SELECT * FROM Customers
WHERE Country = 'Spain' AND (CustomerName LIKE 'G%' OR CustomerName LIKE 'R%');

SELECT * FROM Customers
WHERE CustomerID NOT BETWEEN 10 AND 60;

INSERT INTO Order_tb (OrderDate, TotalAmount, CustomerId)
VALUES 
    ('2024-04-05', 75.25, 2),
    ('2024-04-03', 60.35, 1),
    ('2024-04-06', 120.75, 3);