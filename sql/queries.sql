--  top 5 highest-rated movies
SELECT m.title, AVG(r.rating) as avg_rating
FROM Movies m
JOIN Reviews r ON m.movie_id = r.movie_id
GROUP BY m.title
ORDER BY avg_rating DESC
LIMIT 5;

--  all movies a specific actor starred in
SELECT m.title, m.release_year
FROM Movies m
JOIN Movie_Actors ma ON m.movie_id = ma.movie_id
JOIN Actors a ON ma.actor_id = a.actor_id
WHERE a.name = 'Leonardo DiCaprio';

-- average rating per genre
SELECT g.genre_name, AVG(r.rating) as avg_rating
FROM Genres g
JOIN Movies m ON g.genre_id = m.genre_id
JOIN Reviews r ON m.movie_id = r.movie_id
GROUP BY g.genre_name;

-- users who give consistently high ratings (avg rating >= 9)
SELECT u.username, AVG(r.rating) as avg_rating
FROM Users u
JOIN Reviews r ON u.user_id = r.user_id
GROUP BY u.username
HAVING AVG(r.rating) >= 9;

-- movies released in a given year along with director
SELECT m.title, m.release_year, d.name AS director
FROM Movies m
JOIN Directors d ON m.director_id = d.director_id
WHERE m.release_year = 2010;