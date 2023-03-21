
---------------------------------------------------------------------

SET NOCOUNT ON;

IF OBJECT_ID('Calendar') IS NOT NULL 
	DROP TABLE Calendar;

CREATE TABLE Calendar (
	calendardate DATE CONSTRAINT PK_Calendar PRIMARY KEY
);

DECLARE 
	@startdate DATE = DATEFROMPARTS(YEAR(SYSDATETIME()), 1, 1),
	@enddate DATE = DATEFROMPARTS(YEAR(SYSDATETIME()), 12, 31);

WHILE @startdate <= @enddate
BEGIN
	INSERT INTO Calendar (calendardate)
	VALUES (@startdate);

	SET @startdate = DATEADD(DAY, 1, @startdate);
END;

SET NOCOUNT OFF;

-- observe the HR.Calendar table
SELECT 
	calendardate
FROM Calendar;

---------------------------------------------------------------------

---------------------------------------------------------------------

SELECT 
	e.EmployeeID, e.firstname, e.lastname, c.calendardate
FROM Employees AS e
CROSS JOIN Calendar AS c;

---------------------------------------------------------------------

---------------------------------------------------------------------

IF OBJECT_ID('HR.Calendar') IS NOT NULL 
	DROP TABLE HR.Calendar;
