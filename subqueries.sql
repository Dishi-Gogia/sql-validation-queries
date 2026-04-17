-- Find employees with salary greater than average salary
SELECT employee_id, employee_name, salary
FROM Employees
WHERE salary > (
    SELECT AVG(salary)
    FROM Employees
);

-- Find employees working in the IT department
SELECT employee_id, employee_name
FROM Employees
WHERE department_id = (
    SELECT department_id
    FROM Departments
    WHERE department_name = 'IT'
);

-- Find employees earning the highest salary
SELECT employee_id, employee_name, salary
FROM Employees
WHERE salary = (
    SELECT MAX(salary)
    FROM Employees
);

-- Find second highest salary
SELECT MAX(salary) AS second_highest_salary
FROM Employees
WHERE salary < (
    SELECT MAX(salary)
    FROM Employees
);

-- Find employees who joined after the latest employee in HR department
SELECT employee_id, employee_name, hire_date
FROM Employees
WHERE hire_date > (
    SELECT MAX(hire_date)
    FROM Employees
    WHERE department = 'HR'
);

-- Find customers who placed at least one order
SELECT customer_id, customer_name
FROM Customers
WHERE customer_id IN (
    SELECT customer_id
    FROM Orders
);

-- Find customers who never placed any order
SELECT customer_id, customer_name
FROM Customers
WHERE customer_id NOT IN (
    SELECT customer_id
    FROM Orders
);

-- Find products with price higher than average product price
SELECT product_id, product_name, price
FROM Products
WHERE price > (
    SELECT AVG(price)
    FROM Products
);

-- Find orders with total amount greater than average order amount
SELECT order_id, total_amount
FROM Orders
WHERE total_amount > (
    SELECT AVG(total_amount)
    FROM Orders
);

-- Find department with highest average salary
SELECT department
FROM Employees
GROUP BY department
HAVING AVG(salary) = (
    SELECT MAX(avg_salary)
    FROM (
        SELECT AVG(salary) AS avg_salary
        FROM Employees
        GROUP BY department
    ) AS dept_avg
);

-- Find employees who earn more than all employees in HR department
SELECT employee_id, employee_name, salary
FROM Employees
WHERE salary > ALL (
    SELECT salary
    FROM Employees
    WHERE department = 'HR'
);

-- Find employees who earn more than any employee in Sales department
SELECT employee_id, employee_name, salary
FROM Employees
WHERE salary > ANY (
    SELECT salary
    FROM Employees
    WHERE department = 'Sales'
);

-- Find customers whose order amount is equal to the maximum order amount
SELECT customer_id, order_id, total_amount
FROM Orders
WHERE total_amount = (
    SELECT MAX(total_amount)
    FROM Orders
);

-- Find products never ordered
SELECT product_id, product_name
FROM Products
WHERE product_id NOT IN (
    SELECT product_id
    FROM OrderDetails
);

-- Find duplicate employee names
SELECT employee_name, COUNT(*) AS duplicate_count
FROM Employees
GROUP BY employee_name
HAVING COUNT(*) > 1;
