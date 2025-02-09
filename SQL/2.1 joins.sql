/* JOIN is used to combine rows from two or more tables, based on related column between them.
Different Types of JOINs:
1. (INNER) JOIN: Returns records that have matching values in both tables.
2. LEFT (OUTER) JOIN: Returns all records from the left table, and the matched records from the right table.
3. RIGHT (OUTER) JOIN: Returns all records from the right table, and the matched records from the left table.
4. FULL (OUTER) JOIN: Returns all records when there is a match in either left or right table. */

SELECT *
FROM employee_demographics;

SELECT *
FROM employee_salary;

-- **INNER JOIN** (returns matching records from employee_demographics and employee_salary table)
SELECT *
FROM employee_demographics
INNER JOIN employee_salary
	ON employee_demographics.employee_id = employee_salary.employee_id;

-- Using Aliases
SELECT *
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id;
    
-- Selecting the actual column
SELECT dem.employee_id, age, occupation
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id;
    

-- **LEFT JOIN** (returns all records from employee_demographics and the matched records from employee_salary table)
SELECT *
FROM employee_demographics AS dem
LEFT JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id;
 
 
-- **RIGHT JOIN** (returns all records from employee_salary and the matched records from employee_demographics table, and not matching with nulls)
SELECT *
FROM employee_demographics AS dem
RIGHT JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id;
    

-- **SELF JOIN -  table is joined with itself**
-- Example: Assigning Secret Santa for employees
SELECT *
FROM employee_salary AS emp1
JOIN employee_salary AS emp2
	ON emp1.employee_id + 1= emp2.employee_id;
    
SELECT emp1.employee_id AS emp_santa,
emp1.first_name AS first_name_santa,
emp1.last_name AS last_name_santa,
emp2.employee_id AS emp_name,
emp2.first_name AS emp_first_name,
emp2.last_name AS emp_last_name
FROM employee_salary AS emp1
JOIN employee_salary AS emp2
	ON emp1.employee_id + 1= emp2.employee_id;
    

-- Joining multiple tables together
SELECT *
FROM parks_departments;

-- employee_demographics table ties to employee_salary and employee_salary to parks_departments table
SELECT *
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
INNER JOIN parks_departments AS pd
	ON sal.dept_id = pd.department_id;

