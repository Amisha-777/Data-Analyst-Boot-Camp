/* WHERE Clause is used to filter records and extract only those records that fulfills exact condition.
We can use both arithmatic and logical operators on where clause. */

-- Using Arithmatic operators
SELECT *
FROM employee_salary
WHERE first_name = 'Leslie';

SELECT *
FROM employee_salary
WHERE salary <= 50000;

SELECT *
FROM employee_demographics
WHERE gender = 'Female';


SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01';

-- Using Logical Operators (AND OR NOT)

-- AND : Both conditions need to be true
SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01'
AND gender = 'male';

-- OR : Only one condition needs to be true
SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01'
OR gender = 'male';

SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01'
OR NOT gender = 'male';

-- PEMDAS works on where clause also
SELECT *
FROM employee_demographics
WHERE (first_name = 'Leslie' AND age = 44) OR age > 55;


/* LIKE Statement : used to looks for specific sequence that doesn't have to be exact match.
We can add specfic characters in LIKE statement.
% = anything and _ = specfic values*/

-- Returns name starting with a and anything after that
SELECT *
FROM employee_demographics
WHERE first_name LIKE 'a%' ;

-- Returns name starting with a and has two characters after it
SELECT *
FROM employee_demographics
WHERE first_name LIKE 'a__' ;

-- Returns name starting with a and has three characters after it and can have anything after that
SELECT *
FROM employee_demographics
WHERE first_name LIKE 'a___%' ;

-- Return birth date with year 1980 and anything after that
SELECT *
FROM employee_demographics
WHERE birth_date LIKE '1989%' ;