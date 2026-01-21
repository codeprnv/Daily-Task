-- Lab 1: Use the Student management system Database and table from our previous
-- lab and write a sql query to achieve the below scenario.
-- Assume you are managing a university database that tracks student enrollments in
-- various courses. You have two tables, "Student" and "Enrollment". The goal is to
-- retrieve information about each student's ID, first name, last name, and their
-- enrollment details, including the enrollment ID and the associated course ID.
-- Hint:Use inner join to retrieve data.

use studentmanagementsystem;
SELECT 
    s.StudentID,
    s.FirstName,
    s.LastName,
    e.CourseID,
    e.EnrollmentDate
FROM
    student s
        INNER JOIN
    enrollment e ON s.StudentID = e.StudentID
    
-- ChatGPT Exercise
-- Using ChatGPT generates SQL queries of the below problem .
-- Scenario 1:Imagine you have tables for students and courses. Use an inner join to
-- generate a list of all possible student-course combinations, displaying the student
-- name and course name.
-- We have a "Student" table with the following a
-- columns:StudentId,FirstName,lastName and "Course" table with the following a
-- columns: CourseId,CourseName and Enrollment table with the following a
-- columns:EnrollmentID,StudentID(Foreign key),CourseID(Foreign Key).You want to
-- use inner join to generate a list of all possible student-course combinations.Generate
-- the ChatGPT prompt for the above scenario.

/*
Generate an SQL query to retrieve a list of all student-course combinations using an INNER JOIN.  

The database consists of two tables:  
1. **Student** table with the following columns:  
   - `StudentId` (Primary Key)  
   - `FirstName` (VARCHAR)  
   - `LastName` (VARCHAR)  

2. **Course** table with the following columns:  
   - `CourseId` (Primary Key)  
   - `CourseName` (VARCHAR)  

3. **Enrollment** table with the following columns:  
   - `EnrollmentId` (Primary Key)  
   - `StudentId` (Foreign Key referencing Student)  
   - `CourseId` (Foreign Key referencing Course)  

Write an **INNER JOIN** query that retrieves a list of all **student-course combinations**, displaying:  
- `StudentId`  
- `FirstName`  
- `LastName`  
- `CourseName`  

The query should join the **Student** table with the **Enrollment** table and then join it with the **Course** table to match students with their respective courses.  

Use `INNER JOIN` to ensure that only students **who are enrolled in at least one course** are displayed.  
*/