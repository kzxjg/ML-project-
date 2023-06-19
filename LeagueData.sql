#Full database 
SELECT * 
FROM League;
#Data exploration with SQL
#See how many champions are in God tier 
SELECT Name, Class, Role, Tier, Score, Trend, Win_percent, Ban_percent, Pick_percent
FROM League 
ORDER BY Score DESC;

#Tier Lists for Different Roles 
SELECT Name, Class, Role, Tier
FROM League 
WHERE Role = 'ADC'
ORDER BY Score DESC;

SELECT Name, Class, Role, Tier
FROM League 
WHERE Role = 'SUPPORT'
ORDER BY Score DESC;

SELECT Name, Class, Role, Tier
FROM League 
WHERE Role = 'JUNGLE'
ORDER BY Score DESC;

SELECT Name, Class, Role, Tier
FROM League 
WHERE Role = 'MID'
ORDER BY Score DESC;

SELECT Name, Class, Tier
FROM League 
WHERE Role = 'TOP'
ORDER BY Score DESC;

#Win percent per role with kda 
SELECT Role, 
       ROUND(AVG(Win_percent) ,2) AS "Win_percent", 
       COUNT(Name) AS 'Number of champs', 
       ROUND(AVG(KDA), 2) AS 'KDA'
FROM League
GROUP BY Role
ORDER BY Win_percent DESC;

#Win percent from Class with kda
SELECT Class, 
       ROUND(AVG(Win_percent) ,2) AS "Win_percent", 
       COUNT(Name) AS 'Number of champs', 
       ROUND(AVG(KDA), 2) AS 'KDA'
FROM League
WHERE length(Class) > 1
GROUP BY Class
ORDER BY Win_percent DESC;
