SELECT TOP 1 Employees.EmployeeID 
FROM Employees
WHERE EmployeeID != (SELECT TOP 1 EmployeeID 
FROM Employees 
ORDER BY EmployeeID DESC)
ORDER BY Employees.EmployeeID DESC