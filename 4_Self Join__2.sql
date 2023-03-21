
USE Northwind;
GO


SELECT
	e.EmployeeID, e.lastname, e.firstname, e.title, e.ReportsTo
FROM Employees AS e;
-------------------------------------------------------------------

SELECT
	e.EmployeeID, e.lastname, e.firstname, e.title, e.ReportsTo,
	m.lastname AS mgrlastname, m.firstname AS mgrfirstname
FROM Employees AS e
INNER JOIN Employees AS m ON e.ReportsTo = m.EmployeeID;



