CREATE DATABASE orfeo_db;

USE orfeo_db;

/* Create a database table for users */

CREATE TABLE user (

    id int(15) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(100) NOT NULL,
    password VARCHAR(100) NOT NULL,
    fullname VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    dependence VARCHAR(100) NOT NULL,
    role VARCHAR(2) NOT NULL,
    estate INT(1) NOT NULL,
    
);