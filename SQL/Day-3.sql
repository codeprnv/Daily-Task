-- Lab Assignment 1: SQL Queries
use studentmanagementsystem;
-- Task 1: Update Instructor Email
-- Update the email of Harish Iyer to 'harish.iyer@example.com'

SET SQL_SAFE_UPDATES = 0;
UPDATE Instructor 
SET 
    Email = 'harish.iyer42@example.com'
WHERE
    FirstName = 'Harish'
        AND LastName = 'Iyer';

-- Task 2: Delete Student Record
-- Delete student(s) where LastName is 'Smith'
DELETE FROM Student 
WHERE
    LastName = 'Reddy';

-- Task 3: List Students Whose First Name Starts with 'J'
-- Retrieve students whose FirstName starts with 'J'
SELECT 
    *
FROM
    Student
WHERE
    FirstName LIKE 'A%';


-- Lab Assignment 2: SQL Queries
use employees;
-- Task 1: Insert Data into Employee Table
-- Creating the Employee table
CREATE TABLE Employee (
    emp_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INT NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);

-- Inserting sample data into Employee table
INSERT INTO Employee (first_name, last_name, age, email) VALUES
('Amit', 'Sharma', 28, 'amit.sharma@email.com'),
('Priya', 'Verma', 35, 'priya.verma@email.com'),
('Raj', 'Patel', 40, 'raj.patel@email.com'),
('Neha', 'Reddy', 25, 'neha.reddy@email.com'),
('Vikram', 'Nair', 30, 'vikram.nair@email.com');

-- Task 2: Retrieving Data
-- Retrieve first_name and last_name of all employees
SELECT first_name, last_name FROM Employee;

-- Task 3: Filtering Data
-- Retrieve first_name, last_name, and age of employees older than 30
SELECT first_name, last_name, age FROM Employee
WHERE age > 30;

-- Task 4: Updating Data
-- Increase the age of employees by 1 year for employees older than 25
UPDATE Employee
SET age = age + 1
WHERE age > 25;

SELECT 
    *
FROM
    employee;