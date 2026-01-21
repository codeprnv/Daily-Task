use studentmanagementsystem;

CREATE TABLE Student (
    StudentID INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    FirstName VARCHAR(20) NOT NULL,
    LastName VARCHAR(20) NOT NULL,
    DateOfBirth DATE NOT NULL,
    Gender VARCHAR(10) NOT NULL,
    Email VARCHAR(30) NOT NULL,
    Phone VARCHAR(20) NOT NULL
);

-- Insert data into Student table
INSERT INTO Student (FirstName, LastName, DateOfBirth, Gender, Email, Phone) VALUES
('Aarav', 'Sharma', '2000-05-15', 'Male', 'aarav.sharma@email.com', '9876543210'),
('Ishita', 'Verma', '1999-08-22', 'Female', 'ishita.verma@email.com', '9876543211'),
('Rahul', 'Patel', '2001-02-10', 'Male', 'rahul.patel@email.com', '9876543212'),
('Ananya', 'Reddy', '2002-11-30', 'Female', 'ananya.reddy@email.com', '9876543213'),
('Vikram', 'Nair', '1998-06-25', 'Male', 'vikram.nair@email.com', '9876543214');

-- Task 1: Update the Student table with the following information:
SET SQL_SAFE_UPDATES = 0;
UPDATE Student
SET Email = 'rahul_patel@example.com'
WHERE FirstName = 'Rahul' AND LastName = 'Patel';
SET SQL_SAFE_UPDATES = 1;

/*
Task 2:
Delete record from the Student table on following condition:
Delete student/students records from the Student table where last name is Reddy.
*/
SET SQL_SAFE_UPDATES = 0;
DELETE FROM Student
WHERE LastName = 'Reddy';
SET SQL_SAFE_UPDATES = 1;


SELECT 
    *
FROM
    Student;

CREATE TABLE Course (
    CourseID INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    CourseTitle VARCHAR(40) NOT NULL,
    Credits DOUBLE NOT NULL
);

-- Insert data into Course table
INSERT INTO Course (CourseTitle, Credits) VALUES
('Database Management', 3),
('Data Structures and Algorithms', 4),
('Software Engineering', 3),
('Machine Learning', 4),
('Cybersecurity Fundamentals', 3);

SELECT 
    *
FROM
    Course;

CREATE TABLE Instructor (
    InstructorID INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) NOT NULL
);

-- Insert data into Instructor table
INSERT INTO Instructor (FirstName, LastName, Email) VALUES
('Rajesh', 'Mehta', 'rajesh.mehta@email.com'),
('Anjali', 'Kapoor', 'anjali.kapoor@email.com'),
('Vikas', 'Nair', 'vikas.nair@email.com'),
('Suman', 'Choudhary', 'suman.choudhary@email.com'),
('Harish', 'Iyer', 'harish.iyer@email.com');

SET SQL_SAFE_UPDATES = 0;
UPDATE Instructor
SET Email = 'harish.iyer123@example.com'
WHERE FirstName = 'Harish' AND LastName = 'Iyer';
SET SQL_SAFE_UPDATES = 1;

SELECT 
    *
FROM
    Instructor;

CREATE TABLE Enrollment (
    EnrollmentID INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    EnrollmentDate DATE NOT NULL,
    StudentID INT NOT NULL,
    CourseID INT NOT NULL,
    InstructorID INT NOT NULL,
    FOREIGN KEY (StudentID)
        REFERENCES Student (StudentID),
    FOREIGN KEY (CourseID)
        REFERENCES Course (CourseID),
    FOREIGN KEY (InstructorID)
        REFERENCES Instructor (InstructorID)
);

-- Insert data into Enrollment table
INSERT INTO Enrollment (EnrollmentDate, StudentID, CourseID, InstructorID) VALUES
('2025-01-15', 1, 1, 1),
('2025-01-16', 2, 2, 2),
('2025-01-17', 3, 3, 3),
('2025-01-18', 4, 4, 4),
('2025-01-19', 5, 5, 5);

SELECT 
    *
FROM
    Enrollment;

CREATE TABLE Score (
    ScoreID INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    StudentID INT NOT NULL,
    CourseID INT NOT NULL,
    DateOfExam DATE NOT NULL,
    CreditObtained DOUBLE NOT NULL,
    FOREIGN KEY (StudentID)
        REFERENCES Student (StudentID),
    FOREIGN KEY (CourseID)
        REFERENCES Course (CourseID)
);

-- Insert data into Score table
INSERT INTO Score (CourseID, StudentID, DateOfExam, CreditObtained) VALUES
(1, 1, '2025-03-10', 85),
(2, 2, '2025-03-11', 90),
(3, 3, '2025-03-12', 88),
(4, 4, '2025-03-13', 92),
(5, 5, '2025-03-14', 87);

SELECT 
    *
FROM
    Score;

CREATE TABLE Feedback (
    FeedbackID INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    StudentID INT NOT NULL,
    FeedBackDate DATE NOT NULL,
    InstructorName VARCHAR(30) NOT NULL,
    Feedback VARCHAR(150),
    FOREIGN KEY (StudentID)
        REFERENCES Student (StudentID)
);

-- Insert data into Feedback table
INSERT INTO Feedback (StudentID, FeedBackDate, InstructorName, Feedback) VALUES
(1, '2025-04-01', 'Rajesh Mehta', 'Great teaching style and very informative.'),
(2, '2025-04-02', 'Anjali Kapoor', 'Explains concepts very clearly.'),
(3, '2025-04-03', 'Vikas Nair', 'Good examples but needs more interactive sessions.'),
(4, '2025-04-04', 'Suman Choudhary', 'Very helpful and knowledgeable instructor.'),
(5, '2025-04-05', 'Harish Iyer', 'Engaging lectures and practical approach.');

SELECT 
    *
FROM
    Feedback;