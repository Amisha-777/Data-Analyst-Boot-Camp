/*A Common Table Expression (CTE) in SQL is a temporary result set that you can reference within a SELECT, INSERT, UPDATE, or DELETE statement. It improves query readability and makes it easier to write recursive queries. 
 CTE are unique because it can only be used immediately after being created.
 CTEs allow us to perform more advanced calculations. It also improves readability. */
 
 WITH CTE_Example AS 
 (
 SELECT gender, AVG(salary) AS avg_sal, MAX(salary) AS max_sal, MIN(salary) AS min_sal, COUNT(salary) AS count_sal
 FROM employee_demographics dem
 JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
GROUP BY gender
)
SELECT AVG(avg_sal)
FROM CTE_Example;

-- Compared to subquery
SELECT AVG(avg_sal)
FROM (
 SELECT gender, AVG(salary) AS avg_sal, MAX(salary) AS max_sal, MIN(salary) AS min_sal, COUNT(salary) AS count_sal
 FROM employee_demographics dem
 JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
GROUP BY gender
) example_subquery;

-- Creating Multiple CTEs and joining 
WITH CTE_Example AS 
 (
 SELECT employee_id, gender, birth_date
 FROM employee_demographics
 WHERE birth_date > '1985-01-01'
), 
CTE_Example2 AS 
(
SELECT employee_id, salary
FROM employee_salary
WHERE salary > 50000
) 
SELECT *
FROM CTE_Example
JOIN CTE_Example2
	ON CTE_Example.employee_id = CTE_Example2.employee_id;