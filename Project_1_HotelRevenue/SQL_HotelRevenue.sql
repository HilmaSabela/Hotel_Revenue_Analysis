WITH CTE_Hotels AS 
(
SELECT * 
FROM ['2018$']
UNION
SELECT *
FROM ['2019$']
UNION
SELECT *
FROM ['2020$'])

--SELECT * FROM CTE_Hotels

/*
-- To get the revenue per year and per hotel
SELECT arrival_date_year, hotel, 
round(sum((stays_in_weekend_nights+stays_in_week_nights)*adr),2) AS revenue
FROM CTE_Hotels
GROUP BY arrival_date_year, hotel
*/

SELECT *
FROM CTE_Hotels
LEFT JOIN market_segment$
	ON CTE_Hotels.market_segment = market_segment$.market_segment
LEFT JOIN meal_cost$
	ON CTE_Hotels.meal = meal_cost$.meal




