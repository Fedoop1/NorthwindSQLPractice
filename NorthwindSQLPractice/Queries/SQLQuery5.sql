SELECT dbo.Orders.OrderID 
FROM dbo.Orders 
WHERE dbo.Orders.OrderDate BETWEEN '9-1-1996' AND '9-30-1996'
ORDER BY dbo.Orders.OrderDate