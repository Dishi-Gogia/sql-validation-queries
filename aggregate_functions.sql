-- Count employees
SELECT COUNT(*) AS total_employees
FROM Employees;

-- Average salary
SELECT AVG(salary) AS avg_salary
FROM Employees;

-- Maximum salary
SELECT MAX(salary) AS highest_salary
FROM Employees;

-- Minimum salary
SELECT MIN(salary) AS lowest_salary
FROM Employees;
