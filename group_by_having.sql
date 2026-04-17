-- Count number of employees in each department
SELECT department, COUNT(*) AS total_employees
FROM Employees
GROUP BY department;

-- Find average salary in each department
SELECT department, AVG(salary) AS average_salary
FROM Employees
GROUP BY department;

-- Find highest salary in each department
SELECT department, MAX(salary) AS highest_salary
FROM Employees
GROUP BY department;

-- Find lowest salary in each department
SELECT department, MIN(salary) AS lowest_salary
FROM Employees
GROUP BY department;

-- Find total salary paid in each department
SELECT department, SUM(salary) AS total_salary
FROM Employees
GROUP BY department;

-- Show only departments having more than 5 employees
SELECT department, COUNT(*) AS total_employees
FROM Employees
GROUP BY department
HAVING COUNT(*) > 5;

-- Show departments where average salary is greater than 60000
SELECT department, AVG(salary) AS average_salary
FROM Employees
GROUP BY department
HAVING AVG(salary) > 60000;

-- Find customers who placed more than 3 orders
SELECT customer_id, COUNT(order_id) AS total_orders
FROM Orders
GROUP BY customer_id
HAVING COUNT(order_id) > 3;

-- Find products sold more than 50 times
SELECT product_id, SUM(quantity) AS total_quantity_sold
FROM OrderDetails
GROUP BY product_id
HAVING SUM(quantity) > 50;

-- Find departments with maximum salary greater than 100000
SELECT department, MAX(salary) AS highest_salary
FROM Employees
GROUP BY department
HAVING MAX(salary) > 100000;

-- Find years in which more than 10 employees were hired
SELECT YEAR(hire_date) AS hire_year, COUNT(*) AS total_hires
FROM Employees
GROUP BY YEAR(hire_date)
HAVING COUNT(*) > 10;

-- Find cities having more than 20 customers
SELECT city, COUNT(customer_id) AS total_customers
FROM Customers
GROUP BY city
HAVING COUNT(customer_id) > 20;

-- Find categories with average product price greater than 500
SELECT category, AVG(price) AS average_price
FROM Products
GROUP BY category
HAVING AVG(price) > 500;

-- Find duplicate email addresses
SELECT email, COUNT(*) AS duplicate_count
FROM Customers
GROUP BY email
HAVING COUNT(*) > 1;

-- Find customer IDs having multiple accounts
SELECT customer_id, COUNT(*) AS account_count
FROM Accounts
GROUP BY customer_id
HAVING COUNT(*) > 1;
