SELECT Customers.CompanyName AS Customer, (Employees.FirstName + ' ' + Employees.LastName) AS Employee
FROM (((Orders INNER JOIN Customers ON Customers.CustomerID = Orders.CustomerID)
INNER JOIN Shippers ON Orders.ShipVia = Shippers.ShipperID) 
INNER JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID)
WHERE Employees.City = 'London' AND Shippers.CompanyName = 'Speedy Express' AND Customers.City = 'London'