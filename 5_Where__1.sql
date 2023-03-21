------------------------------------------------------------------

USE Northwind;
GO

---------------------------------------------------------------------
-- Task 1
---------------------------------------------------------------------

SELECT
	custid, companyname, contactname, address, city, country, phone
FROM Sales.Customers
WHERE 
	country = N'Brazil';

---------------------------------------------------------------------
-- Task 2
---------------------------------------------------------------------

SELECT
	customerID, companyname, contactname, address, city, country, phone
FROM Customers
WHERE 
	country IN (N'Brazil', N'UK', N'USA');

---------------------------------------------------------------------
-- Task 3
---------------------------------------------------------------------

SELECT
	customerID, companyname, contactname, address, city, country, phone
FROM Customers
WHERE 
	contactname LIKE N'A%';

---------------------------------------------------------------------
-- Task 4
---------------------------------------------------------------------

SELECT
	c.customerID, c.companyname, o.orderid
FROM Customers AS c
LEFT OUTER JOIN Orders AS o ON c.customerID = o.customerID AND c.city = N'Paris';

SELECT
	c.customerID, c.companyname, o.orderid
FROM Customers AS c
LEFT OUTER JOIN Orders AS o ON c.customerID = o.customerID 
WHERE 
	c.city = N'Paris';

---------------------------------------------------------------------
-- Task 5
---------------------------------------------------------------------

SELECT
	c.customerID, c.companyname
FROM Customers AS c
LEFT OUTER JOIN Orders AS o ON c.customerID = o.customerID 
WHERE o.customerID IS NULL;
