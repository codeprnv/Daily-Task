-- Database Schema:
-- Use the same database schema created in the previous lab.

use studentmanagementsystem;

-- Assignment 1:
-- Task 1: Assume you are managing a database of student records, and you need to 
-- retrieve information about students born after June 16, 2009. What will be the SQL query for this?

SELECT * 
FROM student 
WHERE DateOfBirth > '2009-06-16';


-- Task 2: Assume you have a database containing a "Student" table with information 
-- about students, including their first names. You want to retrieve records of students 
-- whose first names start with either 'A' or 'J'. To achieve this, what will be your SQL query?

SELECT * 
FROM student 
WHERE FirstName LIKE 'A%' OR FirstName LIKE 'J%';

-- Task 3: Let's consider a scenario where you have a database with a "Student" table that 
-- contains information about students, including their first names and email addresses. 
-- You want to retrieve records of students whose first name is not 'Alice' and whose email 
-- addresses contain the domain '@example.com'. To achieve this, what will be your SQL query?

SELECT * 
FROM student 
WHERE FirstName != 'Alice' 
AND Email LIKE '%@example.com';

-- Assignment 2:
-- Task 1: Create a table Person with PersonID int, FirstName varchar(255), 
-- LastName varchar(255), and age (int). 
-- Make PersonID PRIMARY KEY.

CREATE TABLE Person (
    PersonID INT PRIMARY KEY,
    FirstName VARCHAR(255),
    LastName VARCHAR(255),
    Age INT
);

-- Task 2: Create a table Employee with emp_id int, first_name varchar(255), 
-- last_name varchar(255), and age (int). 
-- Make emp_id PRIMARY KEY.

CREATE TABLE employee2 (
    emp_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    age INT
);

-- Task 3: Insert data into the Person table.

INSERT INTO Person (PersonID, FirstName, LastName, Age) 
VALUES 
(1, 'Amit', 'Sharma', 29),
(2, 'Priya', 'Verma', 36),
(3, 'Raj', 'Patel', 41),
(4, 'Neha', 'Reddy', 25),
(5, 'Vikram', 'Nair', 31);


-- Task 4: Insert data into the Employee table.

INSERT INTO employee2 (first_name, last_name, age) 
VALUES 
('Amit', 'Sharma', 29),
('Priya', 'Verma', 36),
('Raj', 'Patel', 41),
('Neha', 'Reddy', 25),
('Vikram', 'Nair', 31);

-- Task 5: Create a UNION of the Person and employee2 tables.

SELECT PersonID AS ID, FirstName, LastName, Age 
FROM Person

UNION 

SELECT emp_id AS ID, first_name AS FirstName, last_name AS LastName, age 
FROM employee2;

-- ChatGPT Exercise:
-- Using ChatGPT to generate SQL queries for the below problem.

-- Scenario 1: In a student grades database with tables for courses and grades, 
-- find the courses where the average grade is below a 'C' (consider 'C' as a passing grade).

-- We have a "Course" table with the following columns:
-- CourseId, CourseName, CreditHours.

-- We also have a "Grade" table with the following columns: 
-- StudentId (Foreign Key), CourseID (Foreign Key), Grade.

-- You want to find courses where the average grade is below a "C". 
-- Generate the ChatGPT prompt for creating the queries for the above requirement.


-- Generate an SQL query to find courses where the average grade is below a "C" in a student grades database.

-- The database consists of two tables:  
-- 1. Course table with the following columns:  
--    - CourseId (Primary Key)  
--    - CourseName (VARCHAR)  
--    - CreditHours (INT)  

-- 2. Grade table with the following columns:  
--    - StudentId (Foreign Key referencing students)  
--    - CourseID (Foreign Key referencing Course)  
--    - Grade (VARCHAR, e.g., 'A', 'B', 'C', 'D', 'F')  

-- Consider 'C' as a passing grade. The query should calculate the average grade for each course 
-- and return only those where the average grade is below 'C'.  

-- Use appropriate SQL functions such as AVG() and GROUP BY to generate the query. 
-- Assume the grade values can be converted into a numeric scale where 'A' is 4, 'B' is 3, 'C' is 2, 'D' is 1, and 'F' is 0.
