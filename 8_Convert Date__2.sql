
---------------------------------------------------------------------

USE Northwind;
GO

---------------------------------------------------------------------

---------------------------------------------------------------------

SELECT N'The unit price for the ' + productname + N' is ' + CAST(unitprice AS NVARCHAR(10)) + N' $.' AS productdesc
FROM Products;


---------------------------------------------------------------------

---------------------------------------------------------------------

SELECT orderid, orderdate, shippeddate, COALESCE(shipregion, 'No region') AS shipregion
FROM Orders 
WHERE 
	orderdate >= CONVERT(DATETIME, '4/1/1997', 101) 
	AND orderdate <= CONVERT(DATETIME, '11/30/1997', 101)
	AND shippeddate > DATEADD(DAY, 30, orderdate);


SELECT orderid, orderdate, shippeddate, COALESCE(shipregion, 'No region') AS shipregion
FROM Orders 
WHERE 
	orderdate >= PARSE('4/1/1997' AS DATETIME USING 'en-US')
	AND orderdate <= PARSE('11/30/1997' AS DATETIME USING 'en-US')
	AND shippeddate > DATEADD(DAY, 30, orderdate);


---------------------------------------------------------------------

---------------------------------------------------------------------

-- error
SELECT 
	CONVERT(INT, REPLACE(REPLACE(REPLACE(REPLACE(phone, N'-', N''), N'(', ''), N')', ''), ' ', '')) AS phonenoasint
FROM Sales.Customers;


SELECT 
	TRY_CONVERT(INT, REPLACE(REPLACE(REPLACE(REPLACE(phone, N'-', N''), N'(', ''), N')', ''), ' ', '')) AS phonenoasint
FROM Sales.Customers;


