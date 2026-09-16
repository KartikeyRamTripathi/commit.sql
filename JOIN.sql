SELECT *
FROM employee_demographics;

SELECT *
FROM employee_salary;

SELECT *
FROM employee_demographics
INNER JOIN employee_salary
 ON employee_demographics.employee_id = employee_salary.employee_id
 ;
 
 SELECT *
FROM employee_demographics;

SELECT *
FROM employee_salary;

SELECT *
FROM employee_demographics AS DEM 
INNER JOIN employee_salary AS SAL
 ON DEM.employee_id = SAL.employee_id
 ;
 
 SELECT *
FROM employee_demographics;

SELECT *
FROM employee_salary;

SELECT *
FROM employee_demographics AS DEM
INNER JOIN employee_salary AS SAL
 ON DEM.employee_id = SAL.employee_id AND DEM.first_name = SAL.first_name
 ;
 
 SELECT *
 FROM employee_demographics AS DEM
 LEFT JOIN employee_salary AS SAL 
  ON DEM.employee_id = SAL.employee_id
  ;
  
  SELECT *
 FROM employee_demographics AS DEM
 RIGHT JOIN employee_salary AS SAL 
  ON DEM.employee_id = SAL.employee_id
  ;
 
 -- SELF JOIN 
 
 SELECT *
 FROM employee_salary AS emp1
 JOIN employee_salary AS emp2
   ON emp1.employee_id = emp2.employee_id
  ;
  
  SELECT *
 FROM employee_salary AS emp1
 JOIN employee_salary AS emp2
   ON emp1.employee_id+1 = emp2.employee_id
  ;
  
SELECT emp1.employee_id AS santa_id,
emp1.first_name AS first_name_santa,
emp1.last_name AS last_name_santa,
emp2.employee_id AS emp_santa_2,
emp2.first_name AS 2first_name_santa,
emp2.last_name AS 2last_name_santa
FROM employee_demographics AS emp1
JOIN employee_salary AS emp2
 ON emp1.employee_id = emp2.employee_id
 ;