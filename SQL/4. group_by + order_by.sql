/* GROUP BY : group together the rows that have same values in the specified columns.
It is often used to find out the aggregate functions (MIN, MAX, SUM) for the grouped values. */

SELECT gender
FROM employee_demographics
GROUP BY gender;

-- If we are not performing aggregate functions, the values need to match.
SELECT first_name
FROM employee_demographics
GROUP BY gender;

-- Grouping two values
SELECT occupation, salary
FROM employee_salary
GROUP BY occupation, salary;

-- Using aggregate functions
SELECT gender, AVG(age)
FROM employee_demographics
GROUP BY gender;

SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
GROUP BY gender;

/* ORDER BY : sorts results in ascending or descending order.
By default it will be in ascending order*/
SELECT *
FROM employee_demographics
ORDER BY first_name;

SELECT *
FROM employee_demographics
ORDER BY first_name DESC;

-- Ordering by two values
SELECT *
FROM employee_demographics
ORDER BY gender, age;

-- Orders gender by ascending and age by descending
SELECT *
FROM employee_demographics
ORDER BY gender, age DESC;

-- We can use also column position but it is not the best practice and not recommended.
SELECT *
FROM employee_demographics
ORDER BY 5, 4;
