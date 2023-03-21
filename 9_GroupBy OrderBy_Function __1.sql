---------------------------------------------------------------------

---------------------------------------------------------------------

USE Northwind;
GO

---------------------------------------------------------------------

---------------------------------------------------------------------

SELECT
	YEAR(orderdate) AS orderyear, 
	COUNT(orderid) AS nooforders, 
	COUNT(DISTINCT customerID) AS noofcustomers
FROM Orders 
GROUP BY YEAR(orderdate);

---------------------------------------------------------------------

---------------------------------------------------------------------

SELECT
	SUBSTRING(c.contactname,1,1) AS firstletter,
	COUNT(DISTINCT c.customerID) AS noofcustomers, 
	COUNT(o.orderid) AS nooforders
FROM Customers AS c
LEFT OUTER JOIN Orders AS o ON o.customerID = c.customerID
GROUP BY SUBSTRING(c.contactname,1,1)
ORDER BY firstletter;


---------------------------------------------------------------------

---------------------------------------------------------------------

SELECT
	c.categoryid, c.categoryname, 
	SUM(d.Quantity * d.unitprice) AS totalsalesamount, 
	COUNT(DISTINCT o.orderid) AS nooforders,
	SUM(d.Quantity * d.unitprice) / COUNT(DISTINCT o.orderid) AS avgsalesamountperorder
FROM Orders AS o
INNER JOIN [Order Details] AS d ON d.orderid = o.orderid
INNER JOIN Products AS p ON p.productid = d.productid
INNER JOIN Categories AS c ON c.categoryid = p.categoryid
WHERE orderdate >= '19960101' AND orderdate < '19970101'
GROUP BY c.categoryid, c.categoryname;

