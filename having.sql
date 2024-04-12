/* This function is used to 
  because you cannot functions with the WHERE keyword
*/  
SELECT COUNT(CustomerID) AS cId, Country AS pays
FROM Customers
GROUP BY Country
HAVING COUNT(CustomerID) > 5 ORDER BY COUNT(CustomerID);
