
# DDL : Data Definition Language
/*
-- Used to create, modify and drop the database and its objects
-- The commands of Data Definition Language Deal with 
   how the data should exist in database.
*/

# Commands
-- CREATE : Create Database and Database Objects (Tables, etc)
-- DROP : Drop Database and Database objects
-- ALTER : Change the structure of database table
-- TRUNCATE : Empty table in an Database


/*																																	 
Table: employees												        
Columns:																
emp_id - (PK)															
emp_name - NOT NULL														
hire_date  															    
dept_id -															
+--------+-----------------+-------------+---------+			     
| emp_id | emp_Name   	   | hire_date   | dept_id |        		 
+--------+-----------------+-------------+---------+		    	 
| 1      | John Doe        | 2023-05-01  |	101    |				 
| 2      | Jane Smith      | 2023-05-02  |	102	   |				 
| 3      | Michael Johnson | 2023-05-03  |	101	   |				 				                             
| 4      | David Wilson    | 2023-05-05  |	102    |				      
+--------+-----------------+-------------+---------+  											
*/

# 1. CREATE Command
-- Create a Database

CREATE DATABASE IF NOT EXISTS ddl_demo;
USE ddl_demo;

-- Create tables
CREATE TABLE IF NOT EXISTS employees (
	emp_id INT PRIMARY KEY,
	emp_Name VARCHAR(100) NOT NULL,
    hire_date DATE,
    dept_id INT
);

-- insert rows
INSERT INTO employees VALUES
(1, "John Doe", "2025-05-12", 102),
(2, "Jane Smith", "2025-05-13", 101),
(3, "Michael Johnson", "2025-04-14", 102),
(4, "David Wilson", "2025-05-15", 101);


# 2. ALTER Command : changing the structure of a table
-- Add a new column to the table
ALTER TABLE employees ADD COLUMN AGE INT; -- WHEN YOU ADD COLUMN TO TABLE IT IS ADDED VERY LAST OF THE TABLE
ALTER TABLE employees ADD COLUMN EMP_INDEX INT FIRST; -- WHEN YOU WANT TO ADD THE COLUMN AT FIRST POSITION WE USE FIRST KEYWORD
ALTER TABLE employees ADD COLUMN EMAIL VARCHAR(100) AFTER EMP_NAME; -- WHEN YOU WANT TO ADD THE COLUMN AT ANY SPECIFIC POSITION WE USE AFTER KEYWORD, AFTER IS USED TO ADD COLUMN AFTER WHICH COLUMN


-- Remove existing column in the table
ALTER TABLE employees DROP COLUMN AGE; -- DROP COLUMN IS USED TO DROP THIS AGE COLUMN

-- Change the data type, add constraints
DESCRIBE employees;
ALTER TABLE employees MODIFY COLUMN EMAIL VARCHAR(160) UNIQUE;

-- Rename a column
ALTER TABLE employees CHANGE COLUMN EMAIL EMP_EMAIL VARCHAR(160) UNIQUE;

-- Rename a table
ALTER TABLE employees RENAME TO EMP_DATA;

SELECT * FROM employees;
SELECT * FROM EMP_DATA;

# 3. DROP Command
CREATE DATABASE DUMMY;
USE DUMMY;
CREATE TABLE TABLE1(C1 INT, C2 INT);
CREATE TABLE TABLE2(C1 INT, C2 INT);
CREATE TABLE TABLE3(C1 INT, C2 INT);


-- Drop table
DROP TABLE TABLE1;
DROP TABLE TABLE2,TABLE3;

-- Drop database
DROP DATABASE DUMMY;

# 4. TRUNCATE  -- DROP TABLE + CREATE TABLE
 /*
TRUNCATE is a DDL command which deletes or removes all the records 
from the table. This command also removes the space allocated for 
storing the table records.
*/

USE DDL_DEMO;
SELECT * FROM EMP_DATA;
TRUNCATE TABLE EMP_DATA; -- IT IS USED TO REMOVE / DELETE THE DATA FROM TABLE


-- DELETE : delete records from the table (DML)
-- TRUNCATE: delete all records from the table (DDL) -- DROP TABLE + CREATE TABLE

-- TRUNCATE (DDL) - DROP TABLE + CREATE TABLE
-- DELETE (DML) - SPECIFY THE ROWS THAT SHOULD BE DELETED
-- DROP (DDL) - REMOVE TABLE STRUCTURE AS WELL AS DATA 










