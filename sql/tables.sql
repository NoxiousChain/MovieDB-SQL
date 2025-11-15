-- drop tables if they exist
DROP TABLE IF EXISTS Reviews, Movie_Actors, Movies, Actors, Directors, Genres, Users;

-- genres
CREATE TABLE Genres (
    genre_id SERIAL PRIMARY KEY,
    genre_name VARCHAR(50) NOT NULL
);

-- directors
CREATE TABLE Directors (
    director_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    birth_year INT
);

-- movies
CREATE TABLE Movies (
    movie_id SERIAL PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    release_year INT,
    genre_id INT REFERENCES Genres(genre_id),
    director_id INT REFERENCES Directors(director_id)
);

-- actors
CREATE TABLE Actors (
    actor_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    birth_year INT
);

-- movie actors
CREATE TABLE Movie_Actors (
    movie_id INT REFERENCES Movies(movie_id),
    actor_id INT REFERENCES Actors(actor_id),
    PRIMARY KEY(movie_id, actor_id)
);

-- users
CREATE TABLE Users (
    user_id SERIAL PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL UNIQUE
);

-- reviews
CREATE TABLE Reviews (
    review_id SERIAL PRIMARY KEY,
    movie_id INT REFERENCES Movies(movie_id),
    user_id INT REFERENCES Users(user_id),
    rating INT CHECK(rating BETWEEN 1 AND 10),
    review_text TEXT,
    review_date DATE DEFAULT CURRENT_DATE
);