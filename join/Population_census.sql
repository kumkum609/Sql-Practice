-- HackerRank: Population census solution

SELECT SUM(CITY.POPULATION)
FROM CITY
INNER JOIN COUNTRY ON 
 CITY.CountryCode = COUNTRY.Code
WHERE CONTINENT = "Asia";
