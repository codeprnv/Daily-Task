use studentmanagementsystem;

-- Lab 1-
-- Task: Let's consider a scenario where you want to retrieve information about students
-- from a database table named student and display the results in ascending order based
-- on their last names.
-- Hint: Use orderBy clause in a ascending Order

SELECT 
    *
FROM
    student
ORDER BY lastname ASC;

-- Lab 2-
-- Task: Let's consider a scenario where you want to count the number of students based
-- on their gender from a database table named Student.
-- Hint: use GroupBy clause and Count() function

-- Count the number of students grouped by gender
SELECT gender, COUNT(*) AS total_students
FROM Student
GROUP BY gender;

-- ChatGPT Exercise
-- Using ChatGPT generates SQL queries of the below problem .
-- Scenario 1:Library Books
-- Given a table called books with columns book_id, title, and author_id, write a query to
-- count the number of books written by each author, ordering the results by the author's
-- name without using a join clause.

-- Count the number of books written by each author
SELECT author_id, COUNT(*) AS total_books
FROM books
GROUP BY author_id
-- Order the results by author_id to maintain a logical order
ORDER BY author_id ASC; -- Change to DESC for descending order
