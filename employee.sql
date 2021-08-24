-- List all employee first and last names only that live in Calgary.
SELECT last_name, first_name, city FROM employee WHERE city = 'Calgary';

-- Find the birthdate for the youngest employee.
SELECT MAX(birth_date) FROM employee;

-- Find the birthdate for the oldest employee.
SELECT MIN(birth_date) FROM employee;

-- Find everyone that reports to Nancy Edwards (use the ReportsTo column). * You will need to query the employee table to find the id for Nancy Edwards
SELECT Nancy Edwards from employee;

-- Count how many people live in Lethbridge.
SELECT COUNT('Lethbridge') FROM employee