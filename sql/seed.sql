USE employee_db;

INSERT INTO departments (name)
VALUES ('Customer Service'), ('Engineering'), ('IT'), ('R&D');

INSERT INTO roles (title, salary, department_id)
VALUES ('CS Head', 80000, 1),
('Sales Rep.', 60000, 1),
('Engineering Master', 150000, 2),
('Software Engineer', 120000, 2),
('IT Genius', 130000, 3),
('IT Sidekick', 110000, 3),
('Head of R&D', 90000, 4),
('R&D Tester', 70000, 4);

INSERT INTO employees (first, last, role_id, manager_id)
VALUES ('Clark', 'Kent', 1, null),
('Diana', 'Prince', 2, 1),
('Bruce', 'Wayne', 3, null),
('Barry', 'Allen', 4, 3),
('Victor', 'Stone', 5, null),
('Arthur', 'Curry', 6, 5),
('John', 'Jones', 7, null),
('Hal', 'Jordan', 8, 7);