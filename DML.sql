# DML : Data Manipulation Language
CREATE DATABASE dml_demo;
USE dml_demo;

-- Create tables
CREATE TABLE IF NOT EXISTS employees (
	emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100) NOT NULL,
    hire_date DATE,
    dept_id INT
);

-- insert rows
INSERT INTO employees VALUES
(1, "John Doe", "2025-05-12", 102),
(2, "Jane Smith", "2025-05-13", 101),
(3, "Michael Johnson", "2025-04-14", 102),
(4, "David Wilson", "2025-05-15", 101);

SELECT * FROM employees;
ALTER TABLE employees ADD COLUMN email VARCHAR(100) AFTER emp_name;

-- INSERT 
/*
-- Used to insert the data in specified columns of a table.
-- The data must be passed in the same order as 
   the order of columns in the table.
*/

-- UPDATE
/*
-- This command is used to modify/change the data of the existing columns of a table.
-- We should make sure to use the WHERE clause which acts like a filter in sql. 
   Using this clause we mention the specific row/rows of a table.
-- If we don’t write a WHERE clause then the UPDATE command modifies all the rows of a table.
*/
-- single updation in a row
UPDATE employees SET dept_id = 102
WHERE EMP_ID = 2;

-- multiple updations in a row
UPDATE employees SET emp_name = "abc", hire_date = "2025-06-17"
WHERE EMP_ID = 3;

-- update multiple rows
SET SQL_SAFE_UPDATES = 0; -- SAFE MODE - IN THIS CASE 102 IN DEP_ID IS IN 3 ROWS OUTOFF THE 4 ROWS BUT ONE ISSUES IS THEIR IN THIS CASE WE USING DEPT_ID THIS IS
-- NON KEY COLUMN MEANS NO PRIMARY KAY NO UNIQUE VALUES ARE NOT AVAILABLE IN THIS COLUMN THEN WE HAVE TO OFF SQL_SAFE_UPDATE  = 0 MEANS WE  HAVE TO OFF SQL_SAFE_UPDATE

UPDATE employees SET EMP_NAME = "ABC"
WHERE DEPT_ID = 102;

-- OR
UPDATE employees SET EMP_NAME = "ABC"
WHERE EMP_ID = 1 AND EMP_ID = 2;


-- update all rows
UPDATE employees SET EMAIL = CONCAT("EMP", EMP_ID, "@COMPANY.COM");
-- WE ARE NOT USIMG WHERE CLAUSE BECAUSE WE HAVE TO UPDATES ALL ROWS # WHERE CLAUSE IS FILTER CLAUSE

SELECT * FROM employees;

-- DELETE
/*
-- This command is used to delete the rows in a table.
-- We should make sure to use the WHERE clause here as well. 
   Using this clause we mention the specific row/rows of a table to be deleted.
-- If we don’t write the WHERE clause then DELETE command deletes all the rows of a table.
*/

-- HERE ALSO SQL_SAFE_UPDATES SHOULD BE OFF (0)
DELETE FROM employees WHERE DEPT_ID = 102 ;

DELETE FROM employees; 

-- when we use the non key column in updation and deletion we need to off the sql_safe_update







