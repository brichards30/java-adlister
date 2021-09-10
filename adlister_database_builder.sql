drop database adlister_db;

create database if not exists adlister_db;

use adlister_db;

CREATE TABLE users (
                       id int NOT NULL AUTO_INCREMENT,
                       email VARCHAR (255) NOT NULL,
                       username VARCHAR(255),
                       password VARCHAR (200) NOT NULL,
                       PRIMARY KEY (id)
);

CREATE TABLE ads (
                     id int NOT NULL AUTO_INCREMENT,
                     title VARCHAR (100) NOT NULL,
                     description TEXT NOT NULL,
                     users_id INT NOT NULL,
                     PRIMARY KEY(id),
                     FOREIGN KEY (users_id) REFERENCES users (id)
);