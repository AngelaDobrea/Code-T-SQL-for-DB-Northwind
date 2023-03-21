
---------------------------------------------------------------------

USE Northwind;
GO


SELECT TOP (20)
	orderid, orderdate
FROM Orders
ORDER BY orderdate DESC;


---------------------------------------------------------------------

SELECT 
	orderid, orderdate
FROM Orders
ORDER BY orderdate DESC
OFFSET 0 ROWS FETCH FIRST 20 ROWS ONLY;


---------------------------------------------------------------------

---------------------------------------------------------------------

SELECT TOP (10) PERCENT
	 productname, unitprice
FROM Products
ORDER BY unitprice DESC;

-----------------------------------------------------------------------

SELECT 
	custid, orderid, orderdate
FROM Sales.Orders
ORDER BY orderdate, orderid
OFFSET 0 ROWS FETCH FIRST 20 ROWS ONLY;

---------------------------------------------------------------------

---------------------------------------------------------------------

SELECT 
	CustomerID, orderid, orderdate
FROM Orders
ORDER BY orderdate, orderid
OFFSET 20 ROWS FETCH NEXT 20 ROWS ONLY;

---------------------------------------------------------------------

---------------------------------------------------------------------
-- Solution (fragment)
OFFSET (@pagenum - 1) * @pagesize ROWS FETCH NEXT @pagesize ROWS ONLY;