-----------------------------------------------------

---------------------------------------------------------------------

---------------------------------------------------------------------

SELECT p.categoryid, p.productname
FROM Products AS p;


---------------------------------------------------------------------

SELECT p.categoryid, p.productname,
		CASE 
			WHEN p.categoryid = 1 THEN 'Beverages'
			WHEN p.categoryid = 2 THEN 'Condiments'
			WHEN p.categoryid = 3 THEN 'Confections'
			WHEN p.categoryid = 4 THEN 'Dairy Products'
			WHEN p.categoryid = 5 THEN 'Grains/Cereals'
			WHEN p.categoryid = 6 THEN 'Meat/Poultry'
			WHEN p.categoryid = 7 THEN 'Produce'
			WHEN p.categoryid = 8 THEN 'Seafood'
			ELSE 'Other'
		END AS categoryname
FROM Products AS p;

---------------------------------------------------------------------

---------------------------------------------------------------------

SELECT p.categoryid, p.productname,
		CASE 
			WHEN p.categoryid = 1 THEN 'Beverages'
			WHEN p.categoryid = 2 THEN 'Condiments'
			WHEN p.categoryid = 3 THEN 'Confections'
			WHEN p.categoryid = 4 THEN 'Dairy Products'
			WHEN p.categoryid = 5 THEN 'Grains/Cereals'
			WHEN p.categoryid = 6 THEN 'Meat/Poultry'
			WHEN p.categoryid = 7 THEN 'Produce'
			WHEN p.categoryid = 8 THEN 'Seafood'
			ELSE 'Other'
		END AS categoryname,
		CASE	
			WHEN p.categoryid IN (1, 7, 8) THEN 'Campaign Products'
			ELSE 'Non-Campaign Products' 
		END AS iscampaign
FROM Products AS p;