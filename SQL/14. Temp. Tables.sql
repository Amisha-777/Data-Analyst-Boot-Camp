/* Temporary Tables : Tables that are only visible to the session that they're created in.
Data analyst normally use temporary tables to store intermediate results like CTE and manipulate data before inserting into permanent table.*/


-- FIRST OPTION
CREATE TEMPORARY TABLE temp_table
(first_name varchar(50),
last_name varchar(50),
favorite_movie varchar(100)
);

SELECT * 
FROM temp_table;

-- Inserting data into the table
INSERT INTO temp_table
VALUES ('Amisha', 'Shrestha', 'Inception');

SELECT * 
FROM temp_table;


-- SECOND OPTION
SELECT *
FROM employee_salary;

-- Creating a temporary table where salary is greater than or equal to 50000
CREATE TEMPORARY TABLE salary_over_50k
SELECT * 
FROM employee_salary
WHERE salary >= 50000;

SELECT *
FROM salary_over_50k;