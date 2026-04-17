-- Sort employees by salary in ascending order
SELECT *
FROM Employees
ORDER BY salary ASC;

-- Sort employees by salary in descending order
SELECT *
FROM Employees
ORDER BY salary DESC;

-- Sort employees by employee name alphabetically
SELECT *
FROM Employees
ORDER BY employee_name ASC;

-- Sort employees first by department, then by salary descending
SELECT *
FROM Employees
ORDER BY department ASC, salary DESC;

-- Get top 5 highest paid employees
SELECT *
FROM Employees
ORDER BY salary DESC
LIMIT 5;

-- Get top 3 lowest paid employees
SELECT *
FROM Employees
ORDER BY salary ASC
LIMIT 3;

-- Get latest 10 orders
SELECT *
FROM Orders
ORDER BY order_date DESC
LIMIT 10;

-- Get first 5 customers alphabetically
SELECT *
FROM Customers
ORDER BY customer_name ASC
LIMIT 5;

-- Skip first 5 records and fetch next 5 records
SELECT *
FROM Employees
ORDER BY employee_id
LIMIT 5 OFFSET 5;

-- Fetch second highest salary
SELECT *
FROM Employees
ORDER BY salary DESC
LIMIT 1 OFFSET 1;

-- Fetch third highest salary
SELECT *
FROM Employees
ORDER BY salary DESC
LIMIT 1 OFFSET 2;

-- Fetch employees hired most recently
SELECT *
FROM Employees
ORDER BY hire_date DESC;

-- Fetch oldest employees based on hire date
SELECT *
FROM Employees
ORDER BY hire_date ASC;

-- Get top 5 orders with highest total amount
SELECT *
FROM Orders
ORDER BY total_amount DESC
LIMIT 5;

-- Sort products by category and price
SELECT *
FROM Products
ORDER BY category ASC, price DESC;
