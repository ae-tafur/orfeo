CREATE DATABASE inarwa_db;

USE inarwa_db;

/* Create a database table for users */

CREATE TABLE user (

    id int(15) NOT NULL,
    username VARCHAR(16) NOT NULL,
    password VARCHAR(50) NOT NULL,
    fullname VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    profile CHAR(1) NOT NULL,
    dependence VARCHAR(100) NOT NULL,
    address VARCHAR(100) NOT NULL,
    rol CHAR(1) NOT NULL,
    ext INT(10) NOT NULL,
    active CHAR(1) NOT NULL 
);

INSERT INTO user (id, username, password, fullname, email, profile, dependence, address, rol, ext, active) 
  VALUES (00010001, 'admin', '123', 'Administrador SGD', 'admin@admin.gov.co', 1, '0001', 'Testing', 5, 0000000000, 1);