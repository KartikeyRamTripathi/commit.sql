-- STRING FUNCTIONS
-- LENGTH 
SELECT first_name, LENGTH(first_name)
FROM employee_demographics
;

-- UPPER
SELECT first_name, UPPER(first_name)
FROM employee_demographics
;

-- LOWER
SELECT first_name, LOWER(first_name)
FROM employee_demographics
;

-- TRIM 
SELECT TRIM('    SKY    ');

-- LEFT AND RIGHT
SELECT first_name, LEFT(first_name,4), RIGHT(first_name,4)
FROM employee_demographics
;

-- SUBSTRING
SELECT first_name, birth_date,
SUBSTRING(first_name,3,2),
SUBSTRING(birth_date,6,2) AS birth_month
FROM employee_demographics
;

-- REPLACE
SELECT first_name, REPLACE(first_name,'a','z')
FROM employee_demographics
;

-- LOCATE
SELECT first_name, LOCATE('a',first_name)
FROM employee_demographics
;

-- CONCAT
SELECT first_name, last_name,
CONCAT(first_name,' ',last_name) AS FULL_NAME
FROM employee_demographics
;
