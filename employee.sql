-- In the employee.sql file, write out the code for the following problems:

-- 1 List all employee first and last names only that live in Calgary.
SELECT * FROM employee
WHERE city = 'Calgary';
-- 2 Find the birthdate for the youngest employee.
SELECT * FROM employee
ORDER BY birth_date DESC
LIMIT 1;
-- 3 Find the birthdate for the oldest employee.
SELECT * FROM employee
ORDER BY birth_date
LIMIT 1;
-- 4 Find everyone that reports to Nancy Edwards (use the ReportsTo column).
--      You will need to query the employee table to find the id for Nancy Edwards
SELECT * FROM employee
WHERE reports_to = 2;
-- 5 Count how many people live in Lethbridge.
SELECT COUNT(*) FROM employee
WHERE city = 'Lethbridge';