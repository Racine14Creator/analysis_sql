/* This function is used to 
  because you cannot functions with the WHERE keyword
*/  
SELECT COUNT(CustomerID) AS cId, Country AS pays
FROM Customers
GROUP BY Country
HAVING COUNT(CustomerID) > 5 ORDER BY COUNT(CustomerID);

/*
The following SQL statement lists the employees that have registered more than 10 orders
*/
SELECT Employees.LastName, COUNT(Orders.OrderID) AS NumberOfOrders
FROM (Orders
INNER JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID)
GROUP BY LastName
HAVING COUNT(Orders.OrderID) > 10;

/*
The following SQL statement lists if the employees "Davolio" or "Fuller" have registered more than 25 orders
*/
SELECT Employees.LastName, COUNT(Orders.OrderID) AS NumberOfOrders
FROM Orders
INNER JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
WHERE LastName = 'Davolio' OR LastName = 'Fuller'
GROUP BY LastName
HAVING COUNT(Orders.OrderID) > 25;
