CREATE DATABASE employee_db;

USE employee_db;

CREATE TABLE departments (
	id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30)
);

CREATE TABLE roles (
	id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(30),
    salary DECIMAL NOT NULL,
    department_id INT NOT NULL,
    FOREIGN KEY (department_id) REFERENCES
    departments(id) ON DELETE CASCADE
);

CREATE TABLE employee (
	id INT AUTO_INCREMENT PRIMARY KEY,
    first VARCHAR(30) NOT NULL,
    last VARCHAR(30) NOT NULL,
    role_id INT,
    manager_id INT,
    FOREIGN KEY (role_id) REFERENCES
    roles(id) ON DELETE SET NULL,
    FOREIGN KEY (manager_id) REFERENCES
    employee(id) ON DELETE SET NULL
);