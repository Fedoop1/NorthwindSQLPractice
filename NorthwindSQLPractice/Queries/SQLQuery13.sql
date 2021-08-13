SELECT Orders.CustomerID, Orders.ShipCountry, ([Order Details].UnitPrice * [Order Details].Quantity) AS OrderPrice
From Orders
INNER JOIN [Order Details]
ON [Order Details].OrderID = Orders.OrderID
WHERE Orders.OrderDate BETWEEN '9.1.1997' AND '12.31.1997' AND Orders.ShipCountry IN
('Argentina', 'Bolivia', 'Brazil', 'Chile', 'Colombia', 'Paraguay', 'Peru', 'Suriname', 'Uruguay', 'Venezuela')
ORDER BY OrderPrice DESC