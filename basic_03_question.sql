
--Aggregate Functions
--Find average salary by department.

USE company;
SELECT department, AVG(salary) AS average_salary
FROM employee
GROUP BY department;
--Count how many employees are in each department.

SELECT department, COUNT(*) AS total_employees
FROM EmployeeRegi2
GROUP BY department;


--What is the total salary expense for the company?

SELECT SUM(salary) AS total_salary_expense
FROM EmployeeRegi2;


-- Subqueries


-- Find employees who earn more than the average salary.

SELECT * FROM EmployeeRegi2
WHERE salary > (
	SELECT AVG(salary)
	from EmployeeRegi2
	);

-- List employees who were hired after the most recently hired employee in "HR"

SELECT *
FROM EmployeeRegi2
WHERE hire_date > (
    SELECT MAX(hire_date)
    FROM EmployeeRegi2
    WHERE department = 'HR'
);

--Joins


-- Join employees with departments to list employee name and department name.
SELECT
    e.first_name,
    e.last_name,
    d.dept_name
FROM EmployeeRegi2 e
INNER JOIN department d
ON e.department= d.dept_name;

--List all departments with total employee count.
SELECT
    d.dept_name,
    COUNT(e.department) AS total_employees
FROM department d
LEFT JOIN EmployeeRegi2 e
ON d.dept_name = e.department
GROUP BY d.dept_name;

--Find employees in departments that have more than 2 employees
SELECT *
FROM EmployeeRegi2
WHERE department IN (
    SELECT department
    FROM EmployeeRegi2
    GROUP BY department
    HAVING COUNT(*) > 2
);