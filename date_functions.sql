-- Get current date
SELECT CURRENT_DATE;

-- Get current date and time
SELECT NOW();

-- Extract year from hire date
SELECT employee_id, employee_name, YEAR(hire_date) AS hire_year
FROM Employees;

-- Extract month from hire date
SELECT employee_id, employee_name, MONTH(hire_date) AS hire_month
FROM Employees;

-- Extract day from hire date
SELECT employee_id, employee_name, DAY(hire_date) AS hire_day
FROM Employees;

-- Find employees hired in 2024
SELECT *
FROM Employees
WHERE YEAR(hire_date) = 2024;

-- Find orders placed in current month
SELECT *
FROM Orders
WHERE MONTH(order_date) = MONTH(CURRENT_DATE)
AND YEAR(order_date) = YEAR(CURRENT_DATE);

-- Find employees hired in the last 30 days
SELECT *
FROM Employees
WHERE hire_date >= CURRENT_DATE - INTERVAL 30 DAY;

-- Find orders placed in last 7 days
SELECT *
FROM Orders
WHERE order_date >= CURRENT_DATE - INTERVAL 7 DAY;

-- Add 10 days to current date
SELECT DATE_ADD(CURRENT_DATE, INTERVAL 10 DAY) AS future_date;

-- Subtract 15 days from current date
SELECT DATE_SUB(CURRENT_DATE, INTERVAL 15 DAY) AS past_date;

-- Find difference between two dates in days
SELECT employee_id,
       employee_name,
       DATEDIFF(CURRENT_DATE, hire_date) AS days_worked
FROM Employees;

-- Find age of employees based on birth date
SELECT employee_id,
       employee_name,
       TIMESTAMPDIFF(YEAR, birth_date, CURRENT_DATE) AS age
FROM Employees;

-- Find orders older than 90 days
SELECT *
FROM Orders
WHERE order_date < CURRENT_DATE - INTERVAL 90 DAY;

-- Format date as DD-MM-YYYY
SELECT employee_id,
       employee_name,
       DATE_FORMAT(hire_date, '%d-%m-%Y') AS formatted_hire_date
FROM Employees;

-- Find first day of current month
SELECT DATE_FORMAT(CURRENT_DATE, '%Y-%m-01') AS first_day_of_month;

-- Find last day of current month
SELECT LAST_DAY(CURRENT_DATE) AS last_day_of_month;

-- Find employees hired on weekend
SELECT *
FROM Employees
WHERE DAYOFWEEK(hire_date) IN (1, 7);

-- Find total months worked by employees
SELECT employee_id,
       employee_name,
       TIMESTAMPDIFF(MONTH, hire_date, CURRENT_DATE) AS months_worked
FROM Employees;
