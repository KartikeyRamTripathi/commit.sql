-- CASE STATEMENTS
SELECT first_name,
last_name,
age,
CASE
 WHEN age <= 30 THEN 'Young age'
 WHEN age BETWEEN 31 AND 40 THEN 'Middle age'
 WHEN age >=41 THEN 'Old age'
END
FROM employee_demographics;


SELECT first_name,
Last_name,
salary,
CASE 
 WHEN salary > 50000 THEN salary+(salary*0.07)
 WHEN salary <= 50000 THEN salary+(salary*0.05)
 END AS New_Salary,
 CASE
  WHEN dept_id = 6 THEN salary*.10
  END AS Bonus
FROM employee_salary
;

