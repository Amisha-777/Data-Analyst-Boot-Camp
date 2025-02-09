/* String Functions are built in functions that help us to use and work with strings.
LENGTH(): count the length of the string.
UPPER(): change cases of the string into uppercase.
LOWER(): change case of the string into lowercase.
TRIM(): removes the leading and trailing whitespaces. There are LTRIM- left trim (removes on left side) and RTRIM- right trim (removes on right side).
LEFT() and RIGHT(): extracts number of characters from left and right hand side.
SUBSTRING(): extracts characters from string allowing us to customize the position and number of characters.
REPLACE(): replace specific characters with characters we want.
LOCATE(): tells position of the character
CONCAT(): combine different columns in one */

-- Using length
SELECT LENGTH('skyfall');

-- Counts the length of first_name
SELECT first_name, LENGTH(first_name) AS Count
FROM employee_demographics
ORDER BY Count;


-- Changing cases of strings
SELECT UPPER('sky');
SELECT LOWER('SKY');

SELECT first_name, UPPER(first_name)
FROM employee_demographics;


-- Using TRIM
SELECT TRIM('         sky          ');     -- removes spaces both sides
SELECT LTRIM('         sky          ');    -- removes spaces only on left side
SELECT RTRIM('         sky          ');    -- removes spaces only on left side


-- Using LEFT, RIGHT and SUBSTRING
SELECT first_name,
LEFT(first_name, 4),          -- Extracts 4 characters from left side
RIGHT(first_name, 4),         -- Extracts 4 characters from right side
SUBSTRING(first_name,3,2),    -- Extracts 2 characters starting from 3rd position of string
SUBSTRING(birth_date,6,2) AS birth_month       -- Extracts month from birth_date
FROM employee_demographics;


-- Using Replace: Replace 'a' with 'z'
SELECT first_name, REPLACE(first_name, 'a', 'z')
FROM employee_demographics;


-- Using Locate: Tells position of 'x' in 'Alexander'
SELECT LOCATE('x', 'Alexander');     -- 

SELECT first_name, LOCATE('An', first_name)  
FROM employee_demographics;


-- Using Concat: Combining first_name and last_name column into one column
SELECT first_name, last_name,
CONCAT(first_name,' ',last_name) AS full_name  
FROM employee_demographics;