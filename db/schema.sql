DROP DATABASE IF EXISTS workTeam_db;
CREATE DATABASE workTeam_db;
--CREATE DATABASE IF NOT EXISTS workTeam_db;

USE workTeam_db;
DROP TABLE IF EXISTS employee;
DROP TABLE IF EXISTS manager;
DROP TABLE IF EXISTS role;
DROP TABLE IF EXISTS department;

-- creating the department table

CREATE TABLE department (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL,
    PRIMARY KEY (id)
);

-- create role table
CREATE TABLE role (
    id INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(30) NOT NULL,
    salary DECIMAL(10,2) NOT NULL,
    department_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (department_id) REFERENCES department(id)
    
);

CREATE TABLE manager (
    id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id INT NOT NULL,
    PRIMARY KEY (id)
    );

-- create the eployee table
CREATE TABLE employee (
    id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id INT NOT NULL,
    manager_id INT,
    salary DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT fk_role FOREIGN KEY (role_id) REFERENCES role(id),
    CONSTRAINT fk_manager FOREIGN KEY (manager_id) REFERENCES manager(id)

);
