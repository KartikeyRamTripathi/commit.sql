SELECT gender
FROM employee_demographics
GROUP BY gender 
;

SELECT gender, AVG(age)
FROM employee_demographics
GROUP BY gender
;

SELECT occupation, salary
FROM employee_salary
GROUP BY occupation, salary
;

-- ORDER BY

SELECT *
FROM employee_salary
ORDER BY first_name DESC
;

SELECT *
FROM employee_salary
ORDER BY first_name ASC
;

SELECT *
FROM employee_demographics
ORDER BY first_name, age, gender
;

SELECT *
FROM employee_demographics
ORDER BY first_name DESC, age, gender
;

SELECT *
FROM employee_demographics
ORDER BY age, gender, first_name
;

SELECT occupation, AVG(salary)
FROM employee_salary
WHERE occupation LIKE '%manager%'
GROUP BY occupation
HAVING AVG(salary) > 50000
;

-- LIMIT & ALIASING

SELECT *
FROM employee_demographics
ORDER BY age DESC
LIMIT 3
;


