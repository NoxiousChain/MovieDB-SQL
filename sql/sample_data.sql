-- genres
INSERT INTO Genres (genre_name) VALUES
('Action'), ('Comedy'), ('Drama'), ('Horror'), ('Sci-Fi');

-- directors
INSERT INTO Directors (name, birth_year) VALUES
('Steven Spielberg', 1946),
('Christopher Nolan', 1970),
('Quentin Tarantino', 1963);

-- movies
INSERT INTO Movies (title, release_year, genre_id, director_id) VALUES
('Inception', 2010, 5, 2),
('Pulp Fiction', 1994, 3, 3),
('Jurassic Park', 1993, 1, 1);

-- actors
INSERT INTO Actors (name, birth_year) VALUES
('Leonardo DiCaprio', 1974),
('Samuel L. Jackson', 1948),
('Jeff Goldblum', 1952);

-- movie actors
INSERT INTO Movie_Actors (movie_id, actor_id) VALUES
(1, 1), -- Inception - Leonardo
(2, 2), -- Pulp Fiction - Samuel
(3, 3); -- Jurassic Park - Jeff

-- users
INSERT INTO Users (username, email) VALUES
('moviebuff', 'buff@example.com'),
('cinemalover', 'lover@example.com');

-- reviews
INSERT INTO Reviews (movie_id, user_id, rating, review_text) VALUES
(1, 1, 9, 'Mind-bending thriller!'),
(2, 2, 10, 'Classic Tarantino masterpiece!'),
(3, 1, 8, 'Amazing dinosaurs and adventure!');