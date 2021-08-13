SELECT COUNT(dbo.Customers.CustomerID), dbo.Customers.City
FROM dbo.Customers
WHERE dbo.Customers.Country IN ('Denmark', 'Norway', 'Sweden') 
GROUP BY dbo.Customers.City
