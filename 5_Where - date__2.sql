
USE Northwind;
GO
------------------------------------------------------------------

SELECT
	c.CustomerID, c.contactname, o.orderid, o.orderdate
FROM Customers AS c
INNER JOIN Orders AS o ON c.CustomerID = o.CustomerID 
WHERE 
	o.orderdate >= '20080401'
ORDER BY
	o.orderdate DESC, c.CustomerID ASC;


-- Task 2


SELECT
	e.EmployeeID, e.lastname, e.firstname, e.title, e.reportsTo,
	m.lastname AS mgrlastname, m.firstname AS mgrfirstname
FROM Employees AS e
INNER JOIN Employees AS m ON e.reportsTo = m.EmployeeID
WHERE
	m.lastname = N'Fuller';

---------------------------------------------------------------------
-- Task 3
---------------------------------------------------------------------

SELECT
	e.EmployeeID, e.lastname, e.firstname, e.title, e.reportsTo,
	m.lastname AS mgrlastname, m.firstname AS mgrfirstname
FROM Employees AS e
INNER JOIN Employees AS m ON e.reportsTo = m.EmployeeID
ORDER BY 
	m.firstname;

SELECT
	e.EmployeeID, e.lastname, e.firstname, e.title, e.reportsTo,
	m.lastname AS mgrlastname, m.firstname AS mgrfirstname
FROM Employees AS e
INNER JOIN Employees AS m ON e.reportsTo = m.EmployeeID
ORDER BY 
	mgrfirstname;

