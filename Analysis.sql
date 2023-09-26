-- Count the number of of athletes of each country
SELECT Country, COUNT(*) AS TotalAthletes
FROM athletes
GROUP BY Country
ORDER BY TotalAthletes DESC;

-- Calculate the total medals won by each country
SELECT Team_Country, SUM(Gold) as Total_gold, SUM(Silver) as Total_silver, SUM(Bronze) as Total_bronze
FROM medals
GROUP BY Team_Country
ORDER BY Total_gold DESC;

-- Calculate the average number of entries by gender for each discipline
SELECT Discipline, AVG(Female) AS Avg_female, AVG(Male) AS Avg_male
FROM entriesgender
GROUP BY Discipline;