-- Inner Join
SELECT e.employee_name, d.department_name
FROM Employees e
INNER JOIN Departments d
ON e.department_id = d.department_id;

-- Left Join
SELECT e.employee_name, d.department_name
FROM Employees e
LEFT JOIN Departments d
ON e.department_id = d.department_id;
