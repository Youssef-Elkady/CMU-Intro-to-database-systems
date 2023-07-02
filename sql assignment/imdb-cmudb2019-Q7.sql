--   List the IMDB Top 250 movies along with its weighted rating.    
-- Details: Count the number of titles in akas for each title in thDetails: The weighted rating of a movie is calculated according to the following formula:
WITH av(average_rating) AS (SELECT SUM(rating * votes) / SUM(votes)
FROM ratings       
JOIN titles       
ON titles.title_id == ratings.title_id AND titles.type == "movie")
,mn(min_rating) AS (SELECT 25000.0) SELECT   primary_title, round((votes / (votes + min_rating)) * rating + (min_rating / (votes + min_rating)) * average_rating,2) as weighed_rating   
FROM ratings, av, mn   
JOIN titles   
ON titles.title_id == ratings.title_id and titles.type == "movie"   
ORDER BY weighed_rating DESC   
LIMIT 250;


