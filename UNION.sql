-- UNIONS
SELECT age, gender
FROM employee_demographics
UNION 
SELECT first_name, last_name
FROM employee_salary
;

-- REMOVES DUPLICATES
SELECT first_name, last_name
FROM employee_demographics
UNION 
SELECT first_name, last_name
FROM employee_salary
;

-- DUPLICATES WILL BE FOUND
SELECT first_name, last_name
FROM employee_demographics
UNION ALL
SELECT first_name, last_name
FROM employee_salary
;

SELECT first_name, last_name, 'OLD MAN' AS LABEL 
FROM employee_demographics
WHERE age > 40 AND gender = 'Male'
UNION
SELECT first_name, last_name, 'OLD LADY' AS LABEL 
FROM employee_demographics
WHERE age > 40 AND gender = 'Female'
UNION
SELECT first_name, last_name, 'Highly Paid' AS LABEL
FROM employee_salary
WHERE salary > 70000
ORDER BY first_name, last_name
;