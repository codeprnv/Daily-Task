-- Lab 4
use studentmanagementsystem;
CREATE TABLE BankAccount (
    account_id INT PRIMARY KEY,
    account_holder_name VARCHAR(30),
    account_balance DOUBLE
);
-- Task 1: Insert Data
-- Write an SQL INSERT statement to insert data into the BankAccount table.
insert into BankAccount(account_id,account_holder_name,account_balance) values(101,'Suresh',50000.52);
insert into BankAccount(account_id,account_holder_name,account_balance) values(102,'Ramesh',65789.21);
insert into BankAccount(account_id,account_holder_name,account_balance) values(103,'Devyani',8921.57);
insert into BankAccount(account_id,account_holder_name,account_balance) values(104,'Anushka',721.29);

-- Task 2: Retrieving Data
-- Write an SQL SELECT statement to retrieve the account_holder_name and
-- account_balance of all account holders from the BankAccount table.
SELECT 
    account_holder_name, account_balance
FROM
    BankAccount;
    
-- Task 3: Filtering Data
-- Write an SQL SELECT statement to retrieve the account_holder_name and
-- account_balance where the account_balance is more than 30,000.

SELECT 
    account_holder_name, account_balance
FROM
    BankAccount
WHERE
    account_balance > 30000;

-- Task 4: Updating Data
-- Write an SQL UPDATE statement to change the account_balance of the account
-- holder whose ID is 101.

UPDATE BankAccount 
SET 
    account_balance = 69000.42
WHERE
    account_id = 101;
    
-- ChatGPT Exercise
-- Using ChatGPT generates SQL queries of the below problem .
-- Scenario 1: In an employee database, you want to retrieve information about
-- employees who belong to the "Sales" department and have a salary greater than
-- 50,000.

SELECT * 
FROM employees 
WHERE department = 'Sales' 
AND salary > 50000;

-- Scenario 2: An employee has resigned, and you need to remove their record from the
-- "employees" table. Write an SQL DELETE query for this.

DELETE FROM employees 
WHERE employee_id = ?; -- Replace '?' with the actual employee ID

-- Scenario 3: You want to delete all orders placed before '2022-01-01' that are still in the
-- 'Pending' status. Write an SQL DELETE query for this.

DELETE FROM orders 
WHERE order_date < '2022-01-01' 
AND status = 'Pending';

-- Scenario 4: You want to remove all products from the "Discontinued" category as they
-- are no longer available. Write an SQL DELETE query for this.

DELETE FROM products 
WHERE category = 'Discontinued';

-- Scenario 5: Employees in the "Sales" department are getting a bonus, and you want to
-- add 1000 to the bonus column for all employees in that department. Write an SQL
-- UPDATE query for this.

UPDATE employees 
SET bonus = bonus + 1000 
WHERE department = 'Sales';
