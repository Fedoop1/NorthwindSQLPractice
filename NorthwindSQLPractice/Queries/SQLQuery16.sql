SELECT Suppliers.CompanyName, MIN(Products.UnitPrice) as MinUnitPrice, MAX(Products.UnitPrice) as MaxUnitPrice
FROM Suppliers
INNER JOIN Products ON Suppliers.SupplierID = Products.SupplierID
GROUP BY Suppliers.CompanyName
ORDER BY Suppliers.CompanyName