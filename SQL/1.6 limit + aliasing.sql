/* Limit & Aliasing 
Limit : specify how many rows is wanted in the output.
Aliasing : are used to give a table, or a column in a table, a temporary name. They make column names more readable.*/

-- LIMIT
SELECT *
FROM employee_demographics
LIMIT 3;

-- Combining with ORDER BY to find top 3 oldest employee
SELECT *
FROM employee_demographics
ORDER BY age DESC
LIMIT 3;

-- Starts at position 2 and skips 1 row after
SELECT *
FROM employee_demographics
ORDER BY age DESC
LIMIT 2, 1;


-- ALIASING
SELECT gender, AVG (age) AS avg_age
FROM employee_demographics
GROUP BY gender
HAVING avg_age > 40;

-- will still work without writing AS
SELECT gender, AVG (age) avg_age
FROM employee_demographics
GROUP BY gender
HAVING avg_age > 40;