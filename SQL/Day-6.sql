use studentmanagementsystem;

-- Lab 1:
-- Database Schema
-- Already we have created an Employee table in day 2 lab,let’s utilize this.
-- Task: Add two more columns in the Employee table named Salary and department and
-- add data into it. Now Imagine you work for a company with various departments, and
-- there is a need to analyze employee salaries within the IT department.Write a query to
-- retrieve all employees from the "employee" table who have a salary greater than 50000
-- and are in the 'IT' department
-- Hint: Use AND operator to retrieve details.

ALTER TABLE employee 
ADD COLUMN salary DOUBLE, 
ADD COLUMN department VARCHAR(20);
UPDATE employee SET salary = 65000.45, department = 'IT' WHERE emp_id = 1;
UPDATE employee SET salary = 75000.23, department = 'IT' WHERE emp_id = 2;
UPDATE employee SET salary = 35000.05, department = 'Sales' WHERE emp_id = 3;
UPDATE employee SET salary = 25000.45, department = 'Sales' WHERE emp_id = 4;
UPDATE employee SET salary = 45000.00, department = 'IT' WHERE emp_id = 5;

SELECT 
    *
FROM
    employee
WHERE
    salary > 50000 AND department = 'IT';
    
-- Lab 2:
-- Database Schema
-- Use our database Ecommerce to complete the task.
-- Task: Imagine you are managing an e-commerce platform, and the holiday season is
-- approaching. To capitalize on the festive spirit and boost sales, you decide to organize a
-- special seasonal sale featuring electronics. The goal is to offer discounts on electronics
-- and include products with a price less than rs. 70,000 in the promotion.Write a query to
-- find products from the "product" table that are either in the 'Electronics' category or
-- have a price less than 70000.
-- Hint: Use Or operator to retrieve product details.


CREATE TABLE product (
    product_id INT PRIMARY KEY AUTO_INCREMENT, 
    name VARCHAR(255) NOT NULL, 
    category VARCHAR(100) NOT NULL, 
    price DECIMAL(10,2) NOT NULL 
);

INSERT INTO product (name, category, price) VALUES 
('Laptop', 'Electronics', 65000.00),
('Smartphone', 'Electronics', 55000.00),
('Tablet', 'Electronics', 75000.00),
('Headphones', 'Electronics', 5000.00),
('Washing Machine', 'Home Appliances', 45000.00),
('Refrigerator', 'Home Appliances', 90000.00),
('Microwave', 'Home Appliances', 30000.00),
('Camera', 'Electronics', 68000.00),
('Smartwatch', 'Electronics', 25000.00),
('Sofa Set', 'Furniture', 80000.00);

SELECT * 
FROM product
WHERE category = 'Electronics' 
   OR price < 70000;

-- Lab 3: HR Salary Analysis
-- Task: Imagine you are an HR analyst responsible for conducting a comprehensive 
-- analysis of average salaries across different departments within a company. 
-- The goal is to understand and compare the average salaries of employees in various 
-- departments.
-- 
-- Write a query to calculate the average salary of employees in each department 
-- from the "employee" table.
--
-- Hint: Use AVG() function and GROUP BY clause to create the query.
--

SELECT 
    department, AVG(salary) AS 'Avg_Salary'
FROM
    employee
GROUP BY department;

-- ChatGPT Exercise
-- Using ChatGPT to generate SQL queries for the below problem.

-- Scenario 1: Determine the average age of employees in each department from the 
-- "employees" table.

-- We have an "Employee" table with the following columns: employee_id, 
-- employee_name, department, and salary. 

-- You want to find the average salary for each department. 

-- Generate the ChatGPT prompt for the above scenario.


-- Generate an SQL query to determine the average age of employees in each department 
-- from the "employees" table. 

-- The "employees" table contains the following columns:
-- - employee_id (INT, Primary Key)
-- - employee_name (VARCHAR)
-- - department (VARCHAR)
-- - age (INT)
-- - salary (DECIMAL)

-- Write a query that calculates the average age of employees grouped by department.
-- Use the AVG() function and GROUP BY clause.

SELECT department, AVG(age) AS Avg_Age
FROM employees
GROUP BY department;

