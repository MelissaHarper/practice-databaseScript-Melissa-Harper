START TRANSACTION;

DROP TABLE IF EXISTS books, movies, inventory;

CREATE TABLE books (
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
title VARCHAR(50) NOT NULL,
author VARCHAR(50) NOT NULL,
copies INT DEFAULT 1
);

CREATE TABLE movies (
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
title VARCHAR(50) NOT NULL,
director VARCHAR(50) NOT NULL,
year_released INT,
duration INT, 
copies INT DEFAULT 1
);

CREATE TABLE inventory (
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
book_id INT NOT NULL REFERENCES books(id), 
movie_id INT NOT NULL REFERENCES movies(id) 
);

INSERT INTO books (title, author)  VALUES 
("The Catcher in the Rye", "J.D. Salinger"),
("To Kill a Mockingbird", "Harper Lee"),
("1984", "George Orwell");

INSERT INTO movies (title, director, year_released, duration) VALUES
("The Shawshank Redemption", "Frank Darabont", 1994, 142),
("The Godfather", "Francis Ford Coppola", 1972, 175),
("The Dark Knight", "Christopher Nolan", 2008, 152);

COMMIT;