SELECT Orders.CustomerID, ROUND(AVG(Orders.Freight), 0) AS freight_avg
FROM Orders
WHERE Orders.ShipCountry IN ('Canada', 'UK')
GROUP BY Orders.CustomerID
HAVING AVG(Orders.Freight) >= 100 OR AVG(Orders.Freight) < 10
ORDER BY freight_avg DESC
