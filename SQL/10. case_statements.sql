/* Case Statements allows us to add logic in our select statements. 
It returns a value when the condition is met (like and if-then-else statement).*/

/* Categorize the ages using 3 conditions 
-- less than 30 is Young
-- Between 31 to 50 is Old
-- greater than 50 is On Death's Door */
SELECT first_name,
last_name,
age,
CASE
	WHEN age <= 30 THEN 'Young'
    WHEN age BETWEEN 31 and 50 THEN 'Old'
    WHEN age >= 50 THEN "On Death's Door"
END AS Age_Bracket
FROM employee_demographics;


/* Clauses from Pawnee Council to determine the Pay Increase and Bonus
< 50000 = 5%
> 50000 = 7%
If works in Finance Department = 10% bonus */

SELECT first_name, last_name, salary,
CASE
	WHEN salary < 50000 THEN salary * 1.05
    WHEN salary > 50000 THEN salary * 1.07
END AS New_Salary,
CASE
	WHEN dept_id = 6 THEN salary * .10
END AS Bonus
FROM employee_salary;


-- Looking for the Finance Department
SELECT *
FROM employee_salary;
SELECT *
FROM parks_departments;
