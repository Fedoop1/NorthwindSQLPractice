SELECT dbo.Customers.ContactName
FROM dbo.Customers
WHERE dbo.Customers.Phone LIKE '%171%77%' AND dbo.Customers.Fax Like '%171%50'