CREATE DATABASE inarwa_db;

USE inarwa_db;

/* Create a database table for users */

CREATE TABLE user (

    usr_id VARCHAR(15) NOT NULL PRIMARY KEY,
    usr_username VARCHAR(16) NOT NULL,
    usr_password VARCHAR(50) NOT NULL,
    usr_fullname VARCHAR(100) NOT NULL,
    usr_email VARCHAR(100) NOT NULL,
    usr_profile VARCHAR(50) NOT NULL,
    usr_dependence VARCHAR(100) NOT NULL,
    usr_address VARCHAR(100) NOT NULL,
    usr_rol VARCHAR(50) NOT NULL,
    usr_ext VARCHAR(50) NOT NULL,
    usr_state VARCHAR(8) NOT NULL,
    usr_created_at TIMESTAMP NOT NULL DEFAULT current_timestamp
);

INSERT INTO user (id, username, password, fullname, email, profile, dependence, address, rol, ext, active) 
  VALUES ('00010000000001', 'admin', '123', 'Administrador SGD', 'admin@admin.gov.co', 'Jefe', '0001', 'Testing', 'Asesor', '0001', 'Activo');

CREATE TABLE dependence (

    dep_id VARCHAR(15) NOT NULL PRIMARY KEY,
    dep_name VARCHAR(16) NOT NULL,
);

CREATE TABLE roles (

    rol_id VARCHAR(15) NOT NULL PRIMARY KEY,
    rol_name VARCHAR(16) NOT NULL
);

CREATE TABLE doctype (

    doc_id VARCHAR(15) NOT NULL PRIMARY KEY,
    doc_name VARCHAR(16) NOT NULL,
    doc_time INT(2) NOT NULL
);

CREATE TABLE building (

    ed_id VARCHAR(15) NOT NULL PRIMARY KEY,
    ed_name VARCHAR(16) NOT NULL,
    ed_address VARCHAR(100) NOT NULL
);

CREATE TABLE contact (

    ct_id VARCHAR(15) NOT NULL PRIMARY KEY,
    ct_fullname VARCHAR(100) NOT NULL,
    ct_email VARCHAR(100) NOT NULL,
    ct_address VARCHAR(100) NOT NULL,
    ct_tel VARCHAR(100) NOT NULL
);

