-- Convert employee names to uppercase
SELECT employee_id,
       UPPER(employee_name) AS employee_name_upper
FROM Employees;

-- Convert employee names to lowercase
SELECT employee_id,
       LOWER(employee_name) AS employee_name_lower
FROM Employees;

-- Get length of employee names
SELECT employee_id,
       employee_name,
       LENGTH(employee_name) AS name_length
FROM Employees;

-- Concatenate first name and last name
SELECT employee_id,
       CONCAT(first_name, ' ', last_name) AS full_name
FROM Employees;

-- Extract first 3 characters from employee name
SELECT employee_id,
       employee_name,
       SUBSTRING(employee_name, 1, 3) AS short_name
FROM Employees;

-- Remove leading and trailing spaces
SELECT employee_id,
       TRIM(employee_name) AS cleaned_name
FROM Employees;

-- Replace old domain with new domain in email
SELECT employee_id,
       email,
       REPLACE(email, '@oldcompany.com', '@newcompany.com') AS updated_email
FROM Employees;

-- Find position of '@' in email address
SELECT employee_id,
       email,
       INSTR(email, '@') AS at_position
FROM Employees;

-- Get first name from full name
SELECT employee_id,
       employee_name,
       SUBSTRING_INDEX(employee_name, ' ', 1) AS first_name
FROM Employees;

-- Get last name from full name
SELECT employee_id,
       employee_name,
       SUBSTRING_INDEX(employee_name, ' ', -1) AS last_name
FROM Employees;

-- Pad employee ID with leading zeros
SELECT employee_id,
       LPAD(employee_id, 5, '0') AS formatted_employee_id
FROM Employees;

-- Remove a specific word from text
SELECT product_id,
       product_name,
       REPLACE(product_name, 'Old', '') AS updated_product_name
FROM Products;

-- Reverse employee names
SELECT employee_id,
       employee_name,
       REVERSE(employee_name) AS reversed_name
FROM Employees;

-- Find employees whose names start with 'A'
SELECT *
FROM Employees
WHERE employee_name LIKE 'A%';

-- Find employees whose names end with 'n'
SELECT *
FROM Employees
WHERE employee_name LIKE '%n';

-- Find employees whose names contain 'ar'
SELECT *
FROM Employees
WHERE employee_name LIKE '%ar%';

-- Find employees whose names have exactly 5 characters
SELECT *
FROM Employees
WHERE LENGTH(employee_name) = 5;

-- Remove spaces from phone numbers
SELECT customer_id,
       phone_number,
       REPLACE(phone_number, ' ', '') AS cleaned_phone_number
FROM Customers;
