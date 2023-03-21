
---------------------------------------------------------------------

USE Northwind;
GO

---------------------------------------------------------------------

---------------------------------------------------------------------

SELECT
	IIF(country = N'Mexico' AND contacttitle = N'Owner', N'Target group', N'Other') AS segmentgroup, customerID, contactname
FROM Customers;

---------------------------------------------------------------------

---------------------------------------------------------------------

SELECT
	IIF(contacttitle = N'Owner' OR region IS NOT NULL, N'Target group', N'Other') AS segmentgroup,  customerID,  contactname
FROM Customers;

---------------------------------------------------------------------

---------------------------------------------------------------------




