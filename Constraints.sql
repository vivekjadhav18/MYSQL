# DAY 1 

# Constraints : Rules applied to data in the table
-- use : 1) Maintain Data Integrity Data Quality
--       2) Validate Data (Data Correctness)

-- Types of Constraints
-- 1) NOT NULL       : ensures no null values in the column]
-- 2) UNIQUE         : ensures no duplicate values in the column
-- 3) DEFAULT        : define default values of a column
-- 4) PRIMARY KEY    : Identify each row of a table uniquely 
--                   : UNIQUE + NOT NULL
-- 5) CHECK()        : custom rule (condition) to the column
-- 6) FOREIGN KEY    : Foreign key refers data from primary key or NULL
--                   : used to create realationship between two tables

CREATE DATABASE Constraints_Demo;
USE Constraints_Demo;

CREATE TABLE Departments(
DEPT_ID INT PRIMARY KEY,
DEPT_NAME VARCHAR(100) UNIQUE NOT NULL,
LOCATION VARCHAR(100) DEFAULT "Mumbai",
EMP_COUNT INT CHECK (EMP_COUNT BETWEEN 60 AND 160)

); 
-- You can define Constraints in any sequence and also able to add the multiple Constraints in single row

INSERT INTO DEPARTMENTS VALUES(101,"A","PUNE",80);
INSERT INTO DEPARTMENTS VALUES(101,"B","PUNE",80); --	Error Code: 1062. Duplicate entry '101' for key 'departments.PRIMARY'	0.000 sec
INSERT INTO DEPARTMENTS VALUES(NULL,"B","PUNE",80); --  Error Code: 1048. Column 'DEPT_ID' cannot be null	0.000 sec
INSERT INTO DEPARTMENTS VALUES(102,"A","PUNE",80);  --  Error Code: 1062. Duplicate entry 'A' for key 'departments.DEPT_NAME'	0.015 sec
INSERT INTO DEPARTMENTS VALUES(102,"D",DEFAULT,80); 
INSERT INTO DEPARTMENTS VALUES(103,"A","BANGLORE",180); -- Error Code: 3819. Check constraint 'departments_chk_1' is violated.	0.000 sec


SELECT * FROM Departments;



-- create resoures table and
-- create relationship from resources to departments
