CREATE DATABASE companyABC;

USE companyABC;

-- Create Departments table
CREATE TABLE departments (
    id INT PRIMARY KEY AUTO_INCREMENT,
    department_name VARCHAR(100) NOT NULL
);

CREATE TABLE employees (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES departments(id)
);

INSERT INTO departments (department_name) VALUES
('HR'),
('Finance'),
('IT'),
('Marketing');

INSERT INTO employees (name, department_id) VALUES
('Alice', 1),
('Bob', 2),
('Charlie', 2),
('David', 3),
('Eva', NULL),       -- Employee with no department
('Frank', 4);


SELECT e.id, e.name, d.department_name
FROM employees e
INNER JOIN departments d ON e.department_id = d.id;

