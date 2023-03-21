---------------------------------------------------------------------
-- LAB 08
--
-- Exercise 3
---------------------------------------------------------------------

USE Northwind;
GO

---------------------------------------------------------------------
-- Task 1
---------------------------------------------------------------------

SELECT contactname, COALESCE(fax, N'No information') AS faxinformation
FROM Customers;

SELECT contactname, ISNULL(fax, N'No information') AS faxinformation
FROM Customers;

---------------------------------------------------------------------
-- Task 2
---------------------------------------------------------------------



SELECT 
	CustomerID, region
FROM Customers
WHERE region is null
GO

DECLARE @region AS NVARCHAR(30) = N'WA'; 

SELECT 
	customerID, region
FROM Customers
WHERE region = @region OR (region IS NULL AND @region IS NULL);

---------------------------------------------------------------------
-- Task 3
---------------------------------------------------------------------

SELECT customerID, contactname, city, region
FROM Customers 
WHERE 
	region IS NULL 
	OR LEN(region) <> 2;
