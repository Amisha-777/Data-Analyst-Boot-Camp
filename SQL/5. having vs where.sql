/* HAVING VS WHERE 
Aggregate functions are evaluated after the where clause. 
Having clause was specifically created to filter groups based on aggregate condition after grouping.*/

SELECT gender, AVG(age)
FROM employee_demographics
GROUP BY gender
HAVING AVG(age) > 40;

-- Where is used to filter at the row level and having is used to filter at the aggregate function level.
SELECT occupation, AVG(salary)
FROM employee_salary
WHERE occupation LIKE '%manager%'
GROUP BY occupation
HAVING AVG(salary) > 75000;  
