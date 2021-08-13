SELECT COUNT(dbo.Customers.CustomerID), dbo.Customers.Country
FROM dbo.Customers
GROUP BY dbo.Customers.Country
HAVING COUNT(dbo.Customers.CustomerID) > 10 
