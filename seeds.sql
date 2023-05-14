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
INSERT INTO role (title, salary, department_id) VALUES
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

-- create  the seeds for the roles

