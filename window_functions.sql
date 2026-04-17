-- Rank employees by salary
SELECT employee_name,
       salary,
       RANK() OVER (ORDER BY salary DESC) AS salary_rank
FROM Employees;

-- Running total
SELECT employee_name,
       salary,
       SUM(salary) OVER (ORDER BY employee_id) AS running_total
FROM Employees;
