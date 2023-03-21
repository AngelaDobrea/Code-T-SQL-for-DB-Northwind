
---------------------------------------------------------------------

USE Northwind;
GO

---------------------------------------------------------------------

---------------------------------------------------------------------

SELECT DISTINCT
	customerID
FROM Orders 
WHERE 
	YEAR(orderdate) = 1996 
	AND MONTH(orderdate) = 7;

-- This one can better utilize indexing than the first solution.

SELECT DISTINCT
	customerID
FROM Orders 
WHERE 
	orderdate >= '1996-07-04'
	AND orderdate < '1996-09-04';


---------------------------------------------------------------------

---------------------------------------------------------------------

SELECT
	CURRENT_TIMESTAMP AS currentdate, 
	DATEADD (day, 1, EOMONTH(CURRENT_TIMESTAMP, -1)) AS firstofmonth,
	EOMONTH(CURRENT_TIMESTAMP) AS endofmonth;

---------------------------------------------------------------------

---------------------------------------------------------------------

SELECT 
	orderid, customerID, orderdate
FROM Orders
WHERE 
	DATEDIFF(
		day,
		orderdate,
		EOMONTH(orderdate)  
	) < 5;


---------------------------------------------------------------------

---------------------------------------------------------------------

SELECT DISTINCT
	d.productid
FROM Sales.Orders AS o
INNER JOIN Sales.OrderDetails AS d ON d.orderid = o.orderid
WHERE 
	DATEPART(week, orderdate) <= 10 
	AND YEAR(orderdate) = 2007;