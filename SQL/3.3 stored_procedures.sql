/* Stored Procedures : It is a way to save our SQL code which can be reuse over and over again.
Saved code in stored procedures can be called and executed. 
It is really helpful for storing complex queries, simplifying repetitive code and enhancing overall performance.*/

SELECT *
FROM employee_salary
WHERE salary >= 50000;

-- Creating Stored Procedure
CREATE PROCEDURE large_salaries()
SELECT *
FROM employee_salary
WHERE salary >= 50000;

-- Calling Stored Procedure 
CALL large_salaries();



-- CLOSE TO BEST PRACTICE: changing delimiter
DELIMITER $$
CREATE PROCEDURE large_salaries3()
BEGIN
SELECT *
FROM employee_salary
WHERE salary >= 50000;
SELECT *
FROM employee_salary
WHERE salary >= 10000;
END $$
DELIMITER ;

CALL large_salaries3();

/* Parameter : It is the variables that are passed as an input into a store procedure. 
It allows stored procedure to accept an input value and place it in the code.*/
DELIMITER $$
CREATE PROCEDURE large_salaries4(p_employee_id INT)
BEGIN
SELECT salary
FROM employee_salary
WHERE employee_id = p_employee_id
;
END $$
DELIMITER ;

-- Returns salary of the employee whose employee_ID is entered 
CALL large_salaries4(5);

