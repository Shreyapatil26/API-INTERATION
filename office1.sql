
CREATE DATABASE office6;
USE office6;
CREATE TABLE department (
    d_id INT PRIMARY KEY,
    d_name VARCHAR(100)
);
INSERT INTO department (d_id, d_name) VALUES
(1, 'CS'),
(2, 'Java'),
(3, 'Python'),
(4, 'EC');
CREATE TABLE employee (
    e_id INT PRIMARY KEY,
    e_name VARCHAR(100),
    d_id INT,
    manager_id INT,
    salary INT,
    age INT,
    FOREIGN KEY (d_id) REFERENCES department(d_id)
);
INSERT INTO employee (e_id, e_name, d_id, manager_id, salary, age) VALUES
(1, 'Rahul', 1, 4, 40000, 25),
(2, 'Shreya', 2, 5, 50000, 30),
(3, 'Ravi', 3, 4, 45000, 22);
UPDATE employee
SET age = 20
WHERE e_id = 1;
INSERT INTO employee (e_id, e_name, d_id, manager_id, salary, age) VALUES
(4, NULL, 2, NULL, NULL, NULL);
SELECT * FROM employee;
SELECT SUM(salary) AS Total_Salary
FROM employee;
SELECT MAX(salary) from employee;
SELECT MIN(salary) from employee;
SELECT AVG(salary)
FROM employee;
SELECT AVG(salary) AS Mean_Salary
FROM employee;
SELECT COUNT(*) AS Total_Employees
FROM employee;
SELECT COUNT(salary)from employee WHERE salary<50000;
SELECT e.e_id,
       e.e_name,
       d.d_name,
       e.salary,
       e.age
FROM employee e
INNER JOIN department d
ON e.d_id = d.d_id;
SELECT e.e_id,
       e.e_name,
       d.d_name,
       e.salary,
       e.age
FROM employee e
LEFT JOIN department d
ON e.d_id = d.d_id;
SELECT e.e_id,
       e.e_name,
       d.d_name,
       e.salary,
       e.age
FROM employee e
RIGHT JOIN department d
ON e.d_id = d.d_id;
SELECT e.e_id,
       e.e_name,
       d.d_name,
       e.salary,
       e.age
FROM employee e
LEFT JOIN department d
ON e.d_id = d.d_id

UNION

SELECT e.e_id,
       e.e_name,
       d.d_name,
       e.salary,
       e.age
FROM employee e
RIGHT JOIN department d
ON e.d_id = d.d_id;



