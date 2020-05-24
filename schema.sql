DROP DATABASE IF EXISTS employee_tracker_db;

CREATE DATABASE employee_tracker_db;

USE employee_tracker_db;

CREATE TABLE department (
  id int NOT NULL AUTO_INCREMENT,
  name varchar(30) NOT NULL,
  PRIMARY KEY(id)
);

CREATE TABLE role (
  id int NOT NULL AUTO_INCREMENT,
  title VARCHAR(30) NOT NULL,
  salary INTEGER,
  department_id INT NULL,
  FOREIGN KEY (department_id) REFERENCES department(id),
  PRIMARY KEY (id)
);

CREATE TABLE employee (
  id int NOT NULL AUTO_INCREMENT,
  lastName VARCHAR(50) NOT NULL,
  FirstName VARCHAR(50) NOT NULL,
  manager_id INT NULL,
  FOREIGN KEY (manager_id) REFERENCES role(id),
  PRIMARY KEY (id)
);
