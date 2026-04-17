-- Employees with salary greater than 50000
SELECT *
FROM Employees
WHERE salary > 50000;

-- Employees from IT department
SELECT *
FROM Employees
WHERE department = 'IT';

-- Employees hired after 2023
SELECT *
FROM Employees
WHERE hire_date > '2023-01-01';

-- Multiple conditions
SELECT *
FROM Employees
WHERE department = 'IT'
AND salary > 60000;
