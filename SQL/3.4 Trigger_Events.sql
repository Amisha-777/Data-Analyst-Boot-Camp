/*TRIGGER AND EVENTS
Trigger is a block of code that automatically executes when an event takes place on a specific table.
Events takes place when it is scheduled. It is very useful importing data, pulling data from specific file path on a schedule, building reports that are exported to a file on a schedule.*/

/* (TRIGGER) 
Scenario: When an employee info is entered into salary table, an automatic update must be done into employee demographics table creating new employee ID, first name and last name. */
DELIMITER $$
CREATE TRIGGER employee_insert
	AFTER INSERT ON employee_salary
    FOR EACH ROW
BEGIN
	INSERT INTO employee_demographics (employee_id, first_name, last_name)
    VALUES (NEW.employee_id, NEW.first_name, NEW.last_name);
END $$
DELIMITER ;

-- Inserting new employee in employee salary table
INSERT INTO employee_salary (employee_id, first_name, last_name, occupation, salary, dept_id)
VALUES (13, 'Jean-Ralphio', 'Saperstein', 'Entertainment 720 CEO', 1000000, NULL);

SELECT *
FROM employee_salary;

SELECT *
FROM employee_demographics;



/* (EVENTS) 
Scenario: Pawnee Council comes up with some new legislation. They need to save some money especially in Parcs and Recs Department. 
They want to retire people who are age of 60 immediately and give them life time pay.
Objective: Create an event that checks employee age every month.
If they are over a specific age, deletes from the table and will retire.*/

SELECT *
FROM employee_demographics;

DELIMITER $$
CREATE EVENT delete_retirees
ON SCHEDULE EVERY 30 SECOND
DO
BEGIN
	DELETE 
    FROM employee_demographics 
    WHERE age >= 60;
END $$
DELIMITER ; 

SHOW VARIABLES LIKE 'event%';
