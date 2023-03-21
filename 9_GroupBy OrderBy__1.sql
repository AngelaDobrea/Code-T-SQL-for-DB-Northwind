---------------------------------------------------------------------

---------------------------------------------------------------------

USE Northwind;
GO

---------------------------------------------------------------------

---------------------------------------------------------------------

SELECT
	o.orderid, o.orderdate, SUM(d.Quantity * d.unitprice) AS salesamount
FROM Orders AS o
INNER JOIN [Order Details] AS d ON d.orderid = o.orderid
GROUP BY o.orderid, o.orderdate
ORDER BY salesamount DESC;

---------------------------------------------------------------------

---------------------------------------------------------------------

SELECT
	o.orderid, o.orderdate, 
	SUM(d.Quantity * d.unitprice) AS salesamount, 
	COUNT(*) AS noofoderlines, 
	AVG(d.Quantity * d.unitprice) AS avgsalesamountperorderline
FROM Orders AS o
INNER JOIN [Order Details] AS d ON d.orderid = o.orderid
GROUP BY o.orderid, o.orderdate
ORDER BY salesamount DESC;

---------------------------------------------------------------------

---------------------------------------------------------------------
SELECT
	YEAR(orderdate) * 100 + MONTH(orderdate) AS yearmonthno, 
	SUM(d.Quantity * d.unitprice) AS saleamountpermonth
FROM Orders AS o
INNER JOIN [Order Details] AS d ON d.orderid = o.orderid
GROUP BY YEAR(orderdate), MONTH(orderdate)
ORDER BY yearmonthno;

---------------------------------------------------------------------

---------------------------------------------------------------------

SELECT 
	c.custid, c.contactname, 
	SUM(d.qty * d.unitprice) AS totalsalesamount,
	MAX(d.qty * d.unitprice) AS maxsalesamountperorderline, 
	COUNT(*) AS numberofrows,
	COUNT(o.orderid) AS numberoforderlines
FROM Sales.Customers AS c
LEFT OUTER JOIN Sales.Orders AS o ON o.custid = c.custid
LEFT OUTER JOIN Sales.OrderDetails AS d ON d.orderid = o.orderid
GROUP BY c.custid, c.contactname
ORDER BY totalsalesamount;



