-- Subqueries are a query within another query.

-- In WHERE Clause: To select employees worked in Parks and Rec Department
SELECT *
FROM employee_demographics
WHERE employee_id IN   -- matches employee_id with id from employee salary table where dept_id is 1
				(SELECT employee_id
					FROM employee_salary
                    WHERE dept_id = 1);
                    

-- In SELECT statement: view all salary and compare with average salary
SELECT first_name, salary, 
(SELECT AVG(salary)
FROM employee_salary) AS Avg_salary 
FROM employee_salary;


-- In FROM Statement
SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
GROUP BY gender;

-- To get average of the maximum age and group by gender
SELECT gender, AVG(max_age) 
FROM
(SELECT gender, 
AVG(age) AS avg_age,
MAX(age) AS max_age, 
MIN(age) AS min_age, 
COUNT(age) AS count_age
FROM employee_demographics
GROUP BY gender) AS Agg_table
GROUP BY gender;


