--   List the decades and the percentage of titles which premiered in the corresponding decade. Display like : 2010s|45.7042 
-- Details: The percentage of titles for a decade is the number of titles which premiered that decade divided by the total number of titles. For the total number of titles, count all titles including ones that have not been premiered. Round the percentage to four decimal places using ROUND(). 
with total_films (totals) AS (select count(*) from titles)
SELECT substr(premiered,0,4) || '0s' as decade,
round(count(*)*100.0/total_films.totals,1) as percentage from titles, total_films
where premiered is not NULL
GROUP By decade
ORDER By percentage DESC;