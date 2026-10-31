
--1. Insert a new employee named "Aman Sharma" in the "Finance" department with a salary of 55,000.
--2. Add 3 new employees from different departments with today's hire date.
--3. Insert a record where the email already exists — observe what happens.
--4. Show all employees in the "IT" department.

use company;
CREATE TABLE EmployeeRegi4(
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    hire_date DATE
);

INSERT INTO EmployeeRegi4
(first_name, last_name, department, salary, hire_date)
VALUES
('Aman', 'Sharma', 'Finance', 60000, GETDATE()),
('Priya', 'Shah', 'IT', 55000, GETDATE()),
('Karan', 'Mehta', 'Marketing', 70000, GETDATE());


SELECT * FROM EmployeeRegi4

--WHERE department = 'IT';
WHERE salary > 60000;


