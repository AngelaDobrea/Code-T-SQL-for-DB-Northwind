
---------------------------------------------------------------------

USE Northwind;
GO

---------------------------------------------------------------------

---------------------------------------------------------------------

SELECT 
	CONCAT(contactname, N' (city: ', city, N')') AS contactwithcity
FROM Customers;

SELECT 
	contactname + N' (city: ' + city + N')' AS contactwithcity 
FROM Customers;

---------------------------------------------------------------------

---------------------------------------------------------------------

SELECT 
	CONCAT(contactname, N' (city: ', city,  N', region: ', region, N')') AS fullcontact
FROM Customers;

SELECT 
	contactname + N' (city: ' + city + N', region: ' + COALESCE(region, '') + N')' AS fullcontact
FROM Customers;

---------------------------------------------------------------------

---------------------------------------------------------------------

SELECT contactname, contacttitle
FROM Customers
WHERE contactname LIKE N'[A-G]%'
ORDER BY contactname;


