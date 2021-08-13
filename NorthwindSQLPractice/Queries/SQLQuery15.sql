SELECT Products.ProductName, Products.UnitsInStock, Suppliers.ContactName, Suppliers.Phone
FROM ((Products
INNER JOIN Suppliers ON Suppliers.SupplierID = Products.SupplierID) 
INNER JOIN Categories ON Products.CategoryID = Categories.CategoryID)
WHERE Products.UnitsInStock <= 20 AND Products.Discontinued = 'True' AND (Categories.CategoryName = 'Beverages' OR Categories.CategoryName = 'Seafood')
ORDER BY Products.UnitsInStock