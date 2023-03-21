
USE Northwind;
GO


SELECT 
	c.CustomerID, c.contactname, o.orderid
FROM Customers AS c
LEFT OUTER JOIN Orders AS o ON c.CustomerID = o.CustomerID



SELECT 
	c.CustomerID, c.contactname, o.orderid
FROM Customers AS c
LEFT OUTER JOIN Orders AS o ON c.CustomerID = o.CustomerID
where o.orderid is null;


