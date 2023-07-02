-- Q3   List all types of titles along with the number of associated titles. 
-- Details: Print type and number of associated titles. For example, tvShort|4075. Sort by number of titles in ascending order. 
SELECT type, count(*) as total_number From titles
GROUP BY type
Order BY total_number;