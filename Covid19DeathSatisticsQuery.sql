SELECT AVG(Deaths) AS 'Average_Deaths', `Country/Region` 
FROM (SELECT * 
FROM testing_database_1.covid_19_data
WHERE ObservationDate < '03/15/2020')
WHERE `Country/Region` LIKE "%C%" OR `Country/Region` LIKE "%I%"
GROUP BY `Country/Region`
HAVING  AVG(Deaths) > 150
ORDER BY Average_Deaths DESC
; 
-- all the data before March 15 2020 
SELECT * 
FROM testing_database_1.covid_19_data
WHERE ObservationDate < '03/15/2020'
