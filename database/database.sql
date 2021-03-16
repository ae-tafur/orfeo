CREATE DATABASE inarwa_db;

USE inarwa_db;

/* Create a database table for users */

CREATE TABLE user (

    id VARCHAR(15) NOT NULL PRIMARY KEY,
    username VARCHAR(16) NOT NULL,
    password VARCHAR(50) NOT NULL,
    fullname VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    profile VARCHAR(50) NOT NULL,
    dependence VARCHAR(100) NOT NULL,
    address VARCHAR(100) NOT NULL,
    rol VARCHAR(50) NOT NULL,
    ext VARCHAR(50) NOT NULL,
    active VARCHAR(8) NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT current_timestamp
);

INSERT INTO user (id, username, password, fullname, email, profile, dependence, address, rol, ext, active) 
  VALUES ('00010000000001', 'admin', '123', 'Administrador SGD', 'admin@admin.gov.co', 'Jefe', '0001', 'Testing', 'Asesor', '0001', 'Activo');