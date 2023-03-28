DROP DATABASE IF EXISTS imdb;
CREATE DATABASE imdb;

USE imdb;

DROP TABLE IF EXISTS film;
CREATE TABLE film(
    film_id INT AUTO_INCREMENT,
    titulo VARCHAR(255),
    description VARCHAR(255),
    release_year YEAR,
    PRIMARY KEY(film_id)
);


DROP TABLE IF EXISTS actor;
CREATE TABLE actor(
    actor_id INT AUTO_INCREMENT, 
    first_name VARCHAR(255), 
    last_name VARCHAR(255),
    PRIMARY KEY(actor_id)
);

DROP TABLE IF EXISTS film_actor;
CREATE TABLE film_actor(
    actor_id INT, 
    film_id INT,
    constraint actor_fk FOREIGN KEY (actor_id) REFERENCES actor (actor_id),
    constraint film_fk FOREIGN KEY (film_id) REFERENCES film (film_id)
);  

ALTER TABLE film ADD last_update DATE NOT NULL;
ALTER TABLE actor ADD last_update DATE NOT NULL;


INSERT INTO film(titulo, description,release_year,last_update) VALUES('Jumanji','Ciencia Ficcion',2000, CURDATE());
INSERT INTO film(titulo, description,release_year,last_update) VALUES('Aladin','Ciencia Ficcion',1999, CURDATE());
INSERT INTO film(titulo, description,release_year,last_update) VALUES('Tarzan','Ciencia Ficcion',1998, CURDATE());
INSERT INTO film(titulo, description,release_year,last_update) VALUES('Simba','Ciencia Ficcion',1997, CURDATE());

INSERT INTO actor(first_name, last_name, last_update) VALUES('Marian','Brandon',CURDATE());
INSERT INTO actor(first_name, last_name, last_update) VALUES('John','Martins',CURDATE());
INSERT INTO actor(first_name, last_name, last_update) VALUES('Martin','Merlot',CURDATE());
INSERT INTO actor(first_name, last_name, last_update) VALUES('Jaimes','Nots',CURDATE());

INSERT INTO film_actor(actor_id,film_id) VALUES (1,1);
INSERT INTO film_actor(actor_id,film_id) VALUES (2,2);
INSERT INTO film_actor(actor_id,film_id) VALUES (3,3);
INSERT INTO film_actor(actor_id,film_id) VALUES (4,4);