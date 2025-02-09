/* SELECT is used to select data from database.
* = select all columns from the table
DISTINCT = select only unique values in the column */

-- Select all columns from employee_demographics table
SELECT *
FROM parks_and_recreation.employee_demographics;

-- Select required column from employee_demographics table
SELECT first_name, 
last_name, 
age,
age + 10
FROM parks_and_recreation.employee_demographics;

-- SQL follows the PEMDAS rule
SELECT first_name, 
last_name, 
age,
(age + 10) * 10 + 10
FROM parks_and_recreation.employee_demographics;

-- Using distinct
SELECT DISTINCT first_name, gender 
FROM parks_and_recreation.employee_demographics;