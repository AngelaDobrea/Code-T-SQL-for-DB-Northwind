---------------------------------------------------------------------

---------------------------------------------------------------------

USE Northwind;
GO


---------------------------------------------------------------------

SELECT 
	c.CustomerID, contactname, orderid
FROM Customers  c
INNER JOIN Orders ON c.CustomerID = Orders.CustomerID;

---------------------------------------------------------------------

---------------------------------------------------------------------

SELECT 
	Customers.CustomerID, contactname, orderid
FROM Customers  
INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

---------------------------------------------------------------------

---------------------------------------------------------------------

SELECT 
	c.CustomerID, c.contactname, o.orderid
FROM Customers AS c
INNER JOIN Orders AS o ON c.CustomerID = o.CustomerID;

-- 
SELECT 
	c.CustomerID, c.contactname, o.orderid
FROM Customers AS c
INNER JOIN Orders AS o ON c.CustomerID =o.CustomerID;


---------------------------------------------------------------------

---------------------------------------------------------------------

SELECT 
	c.CustomerID, c.contactname, o.orderid, d.productid, d.Quantity, d.unitprice
FROM Customers AS c
INNER JOIN Orders AS o ON c.CustomerID = o.CustomerID
INNER JOIN [Order Details] AS d ON d.orderid = o.orderid;
