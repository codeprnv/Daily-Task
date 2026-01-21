-- 1. Create a simple table countries
CREATE TABLE countries (
    country_id INT,
    country_name VARCHAR(100),
    region_id INT
);

-- 2. Create a table only if it does not already exist
CREATE TABLE IF NOT EXISTS countries (
    country_id INT,
    country_name VARCHAR(100),
    region_id INT
);

-- 3. Create the structure of dup_countries similar to countries
CREATE TABLE dup_countries LIKE countries;

-- 4. Create a duplicate copy of countries table including structure and data
CREATE TABLE dup_countries AS SELECT * FROM countries;

-- 5. Create a table countries with NULL constraint
CREATE TABLE countries (
    country_id INT NOT NULL,
    country_name VARCHAR(100) NOT NULL,
    region_id INT NOT NULL
);

-- 6. Create a table jobs with a constraint on max_salary
CREATE TABLE jobs (
    job_id INT PRIMARY KEY,
    job_title VARCHAR(255),
    min_salary DECIMAL(10,2),
    max_salary DECIMAL(10,2) CHECK (max_salary <= 25000)
);

-- 7. Create a table countries with restricted values for country_name
CREATE TABLE countries (
    country_id INT PRIMARY KEY,
    country_name VARCHAR(100) CHECK (country_name IN ('Italy', 'India', 'China')),
    region_id INT
);

-- 8. Create a table job_history with formatted end_date
CREATE TABLE job_history (
    employee_id INT,
    start_date DATE,
    end_date DATE CHECK (end_date REGEXP '^[0-9]{2}/[0-9]{2}/[0-9]{4}$'),
    job_id INT,
    department_id INT
);

-- 9. Create a table countries ensuring country_id is unique
CREATE TABLE countries (
    country_id INT PRIMARY KEY,
    country_name VARCHAR(100),
    region_id INT
);

-- 10. Create a table jobs with default values
CREATE TABLE jobs (
    job_id INT PRIMARY KEY,
    job_title VARCHAR(255) DEFAULT '',
    min_salary DECIMAL(10,2) DEFAULT 8000,
    max_salary DECIMAL(10,2) DEFAULT NULL
);

-- 11. Create a table countries ensuring country_id is a unique key
CREATE TABLE countries (
    country_id INT UNIQUE,
    country_name VARCHAR(100),
    region_id INT
);

-- 12. Create a table countries ensuring country_id is auto-incremented
CREATE TABLE countries (
    country_id INT AUTO_INCREMENT PRIMARY KEY,
    country_name VARCHAR(100),
    region_id INT
);

-- 13. Create a table countries with unique country_id and region_id combination
CREATE TABLE countries (
    country_id INT,
    country_name VARCHAR(100),
    region_id INT,
    UNIQUE (country_id, region_id)
);

-- 14. Create a table job_history ensuring employee_id is unique and job_id is a foreign key
CREATE TABLE job_history (
    employee_id INT UNIQUE,
    start_date DATE,
    end_date DATE,
    job_id VARCHAR(10),
    department_id INT,
    FOREIGN KEY (job_id) REFERENCES jobs(job_id)
);

-- 15. Create a table employees ensuring employee_id is unique and department_id, manager_id are foreign keys
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone_number VARCHAR(20),
    hire_date DATE,
    job_id VARCHAR(10),
    salary DECIMAL(10,2),
    commission DECIMAL(10,2),
    manager_id DECIMAL(6,0),
    department_id DECIMAL(4,0),
    FOREIGN KEY (job_id) REFERENCES jobs(job_id),
    FOREIGN KEY (department_id, manager_id) REFERENCES departments(department_id, manager_id)
);

-- 16. Rename the table countries to country_new
RENAME TABLE countries TO country_new;

-- 17. Add a column region_id to the table locations
ALTER TABLE locations ADD COLUMN region_id INT;

-- 18. Add a column ID as the first column of the table locations
ALTER TABLE locations ADD COLUMN ID INT FIRST;

-- 19. Add a column region_id after state_province to the table locations
ALTER TABLE locations ADD COLUMN region_id INT AFTER state_province;

-- 20. Change the data type of the column country_id to integer in the table locations
ALTER TABLE locations MODIFY country_id INT;

-- 21. Drop the column city from the table locations
ALTER TABLE locations DROP COLUMN city;

-- 22. Change the name of the column state_province to state, keeping the data type and size same
ALTER TABLE locations CHANGE COLUMN state_province state VARCHAR(255);

-- 23. Add a primary key for the column location_id in the locations table
ALTER TABLE locations ADD PRIMARY KEY (location_id);

-- 24. Display names with alias
SELECT first_name AS 'First Name', last_name AS 'Last Name' FROM employees;

-- 25. Get unique department IDs
SELECT DISTINCT department_id FROM employees;

-- 26. Get all employee details ordered by first name descending
SELECT * FROM employees ORDER BY first_name DESC;

-- 27. Get names, salary, and PF (15% of salary)
SELECT first_name, last_name, salary, (salary * 0.15) AS PF FROM employees;

-- 28. Get employee ID, names, salary in ascending order of salary
SELECT employee_id, first_name, last_name, salary FROM employees ORDER BY salary ASC;

-- 29. Get total salaries payable to employees
SELECT SUM(salary) AS total_salaries FROM employees;

-- 30. Get maximum and minimum salary
SELECT MAX(salary) AS max_salary, MIN(salary) AS min_salary FROM employees;

-- 31. Get average salary and number of employees
SELECT AVG(salary) AS avg_salary, COUNT(*) AS total_employees FROM employees;

-- 32. Get the number of employees
SELECT COUNT(*) AS employee_count FROM employees;
