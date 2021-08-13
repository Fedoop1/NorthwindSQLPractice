SELECT Orders.CustomerID, SUM(Orders.Freight) AS freight_sum
FROM Orders
WHERE (Orders.ShippedDate BETWEEN '6.1.1996' AND '12.31.1996') AND Orders.Freight >= (select AVG(Orders.Freight) from Orders)
GROUP BY(Orders.CustomerID)
Order BY freight_sum