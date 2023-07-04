-- create the seeds for the departments 
/INSERT INTO department (name) VALUES
('Sales'),
('Engineering'),
('Finance'),
('Legal'),
('Marketing'),
('Research'),
('Management');

-- create the seeds for the roles
INSERT INTO roles (title, salary, department_id) VALUES
('Sales Lead', 50000.00, 1),
('Sales Associate', 60000.00, 1),
('Sales Representative', 30000.00, 1),
('Lead Engineer', 50000.00, 2),
('Software Engineer', 50000.00, 2),
('Accountant', 80000.00, 3),
('Finance Associate', 100000.00, 3),
('Finance Representative', 80000.00, 3),
('Legal Representative', 70000.00, 4),
('Marketing Lead', 80000.00, 5),
('Marketing Associate', 70000.00, 5),
('Research Lead', 90000.00, 6),
('Research Associate', 80000.00, 6),
('Manager', 100000.00, 7);

-- create the seeds for the managers
INSERT INTO manager (first_name, last_name, role_id) VALUES
    ('James', 'Anderson', 1),
    ('Sophie', 'Walker', 1),
    ('Matthew', 'Thompson', 1),
    ('Isabella', 'Harris', 1),
    ('Daniel', 'Wilson', 1),
    ('Olivia', 'Garcia', 1),
    ('Benjamin', 'Davis', 1),
    ('Emily', 'Clark', 1);

-- create  the seeds for the employees
INSERT INTO employee (first_name, last_name, role_id, manager_id, salary) VALUES
('Walter', 'White', 1, 1, 50000.00),                    
('Gus', 'Fring', 2, 6, 50000.00),                       
('Jesse', 'Pinkman', 3, 5, 50000.00),
('Skylar', 'White', 3, 4, 50000.00),
('Hank', 'Schrader', 3, 1, 50000.00),
('Walter', 'White Jr', 3, 1, 50000.00),
('Saul', 'Goodman', 3, 2, 50000.00),
('Marie', 'Schrader', 3, 2, 50000.00),
('Mike', 'Ehrmantraut', 3, 3, 50000.00),
('Steven', 'Gomez', 3, 3, 50000.00),
('Hector', 'Salamanca', 3,4, 50000.00),
('Marco', 'Salamanca', 3, 4, 50000.00),
('Tuco', 'Salamanca', 3, 5, 50000.00),
('Todd', 'Alquist', 3, 5, 50000.00),
('Lydia', 'Rodarte', 3, 6, 50000.00),
('Jane', 'Margolis', 3, 6, 50000.00),
('Dexter', 'Morgan', 3, 7, 50000.00),
('Debra', 'Morgan', 3, 7, 50000.00),
('Angel', 'Batista', 3, 8, 50000.00),
('Maria', 'LaGuerta', 3, 8, 50000.00);

