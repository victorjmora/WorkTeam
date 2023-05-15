-- create the seeds for the departments 
INSERT INTO department (name) VALUES
('Sales'),
('Engineering'),
('Finance'),
('Legal'),
('Marketing'),
('Research'),
('Management');

-- create the seeds for the roles
INSERT INTO roles (title, salary, department_id) VALUES
('Sales Lead', 50000, 1),
('Sales Associate', 60000, 1),
('Sales Representative', 30000, 1),
('Lead Engineer', 50000, 2),
('Software Engineer', 50000, 2),
('Accountant', 80000, 3),
('Finance Associate', 100000, 3),
('Finance Representative', 80000, 3),
('Legal Representative', 70000, 4),
('Marketing Lead', 80000, 5),
('Marketing Associate', 70000, 5),
('Research Lead', 90000, 6),
('Research Associate', 80000, 6),
('Manager', 100000, 7);

-- create  the seeds for the employees
INSERT INTO employees (first_name, last_name, role_id, manager_id, department_id, salary) 
VALUES
--sort the employees by department--
('Walter', 'White', 1, 1, 50000.00),                     --
('Gus', 'Fring', 2, 1, 50000.00),                       
('Jesse', 'Pinkman', 3, 1, 50000.00),
('Skylar', 'White', 3, 2, 50000.00),
('Hank', 'Schrader', 3, 3, 50000.00),
('Walter', 'White Jr', 3, 4, 50000.00),
('Saul', 'Goodman', 3, 5, 50000.00),
('Marie', 'Schrader', 3, 6, 50000.00),
('Mike', 'Ehrmantraut', 3, 7, 50000.00),
('Steven', 'Gomez', 3, 8, 50000.00),
('Hector', 'Salamanca', 3, 9, 50000.00),
('Marco', 'Salamanca', 3, 10, 50000.00),
('Tuco', 'Salamanca', 3, 11, 50000.00),
('Todd', 'Alquist', 3, 12, 50000.00),
('Lydia', 'Rodarte', 3, 13, 50000.00),
('Jane', 'Margolis', 3, 14, 50000.00),
('Dexter', 'Morgan', 3, 15, 50000.00),
('Debra', 'Morgan', 3, 16, 50000.00),
('Angel', 'Batista', 3, 17, 50000.00),
('Maria', 'LaGuerta', 3, 18, 50000.00),
