---------------------------------------------------------------------
---------------------------------------------------

USE Northwind;
GO

---------------------------------------------------------------------

---------------------------------------------------------------------

SELECT TOP (10) 
	o.customerID, 
	SUM(d.quantity * d.unitprice) AS totalsalesamount 
FROM Orders AS o
INNER JOIN [Order Details] AS d ON d.orderid = o.orderid
GROUP BY o.customerID
HAVING SUM(d.quantity * d.unitprice) > 10000
ORDER BY totalsalesamount DESC;

---------------------------------------------------------------------

---------------------------------------------------------------------

SELECT
	o.orderid,
	o.employeeID,
	SUM(d.quantity * d.unitprice) as totalsalesamount
FROM Orders AS o
INNER JOIN [Order Details] AS d ON d.orderid = o.orderid
WHERE o.orderdate >= '19960101' AND o.orderdate < '19970101'
GROUP BY o.orderid, o.employeeID;

---------------------------------------------------------------------
--
---------------------------------------------------------------------

-- add having clause
SELECT
	o.orderid,
	o.EmployeeID,
	SUM(d.quantity * d.unitprice) as totalsalesamount
FROM Orders AS o
INNER JOIN [Order Details] AS d ON d.orderid = o.orderid
WHERE o.orderdate >= '19960101' AND o.orderdate < '19970101'
GROUP BY o.orderid, o.EmployeeID
HAVING SUM(d.quantity * d.unitprice) >= 10000;

-- add predicate
SELECT
	o.orderid,
	o.EmployeeID,
	SUM(d.quantity * d.unitprice) as totalsalesamount
FROM Orders AS o
INNER JOIN [Order Details] AS d ON d.orderid = o.orderid
WHERE 
	o.orderdate >= '19960101' AND o.orderdate <= '19970101'
	AND o.EmployeeID = 3
GROUP BY o.orderid, o.EmployeeID
HAVING SUM(d.quantity * d.unitprice) >= 1000;


---------------------------------------------------------------------

---------------------------------------------------------------------

SELECT
	o.customerID, 
	MAX(orderdate) AS lastorderdate, 
	SUM(d.quantity * d.unitprice) AS totalsalesamount
FROM Orders AS o
INNER JOIN [Order Details] AS d ON d.orderid = o.orderid
GROUP BY o.customerID 
HAVING COUNT(DISTINCT o.orderid) > 25;

