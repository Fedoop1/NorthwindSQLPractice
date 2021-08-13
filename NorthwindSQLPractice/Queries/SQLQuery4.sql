SELECT dbo.Customers.CompanyName 
FROM dbo.Customers
WHERE dbo.Customers.City IN ('Madrid', 'London', 'Berlin', 'Bruxelles', 'Paris')
ORDER BY dbo.Customers.CustomerID DESC