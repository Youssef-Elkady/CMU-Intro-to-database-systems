--  Which decades saw the most number of titles getting premiered? List the number of titles in every decade. Like 2010s|2789741. 
-- Details: Print all decades and the number of titles. Print the relevant decade in a fancier format by constructing a string that looks like this: 2010s. Sort the decades in decreasing order with respect to the number of titles. Remember to exclude titles which have not been premiered (i.e. where premiered is NULL)
SELECT substr(premiered,0,4) || '0s' as decade,
count(*) as number_of_films 
from titles
where premiered is not NULL
GROUP By decade
ORDER By number_of_films DESC;