-- 1. Paises donde estan ubicadas cada universidad.
SELECT c.id, c.country_name, u.university_name 
FROM universities.dbo.country AS c 
INNER JOIN universities.dbo.university AS u 
ON c.id = u.country_id;


-- 2. Conocer cuantas universidades hay en cada pais.
SELECT C.id, C.country_name , COUNT(U.[country_id]) AS 'TotalUniversities' 
FROM universities.dbo.university AS U 
INNER JOIN universities.dbo.country AS C 
ON C.id = U.country_id GROUP BY C.id, C.country_name, U.country_id;

-- TODO: 3. Conocer cuantos paises no tienen universidades en el ranking.
SELECT * FROM universities.dbo.university;
SELECT * FROM universities.dbo.country;
SELECT * FROM universities.dbo.university_ranking_year AS URY;
SELECT * FROM universities.dbo.ranking_criteria;



-- 4. Mostrar los criterios de cada tipo de ranking.
SELECT rs.system_name, rc.criteria_name
FROM universities.dbo.ranking_criteria AS rc
INNER JOIN universities.dbo.ranking_system AS rs
ON rc.ranking_system_id = rs.id;


-- 5. Conocer el ranking que tiene mas criterios.
SELECT TOP 1 rs.system_name, COUNT(rc.ranking_system_id) AS 'Critery Number'
FROM universities.dbo.ranking_criteria AS rc
INNER JOIN universities.dbo.ranking_system AS rs
ON rc.ranking_system_id = rs.id
GROUP BY RS.system_name, rc.ranking_system_id
ORDER BY rc.ranking_system_id DESC;

-- 6. Cual es el top de universidades de forma descendente del ano 2012 por cada criterio.
SELECT * 
FROM universities.dbo.university AS u
INNER JOIN universities.dbo.university_ranking_year AS ury
ON ury.[year] >= 2012
ORDER BY ury.ranking_criteria_id DESC;

-- 7. Mostrar las 5 universidad con mas cantidades de score 100 del ranking tipo 'Center for World University Rankings'.



-- 8. Mostrar que paises se posicionaron con universidades con un score mayor a 90.



-- 9. Mostrar las universidades que utilizan los criterios del tipo ranking 'Shangai Ranking'.



-- 10. Mostrart el top 10 de las peores posiciones del tipo ranking 'Times Higher....'.