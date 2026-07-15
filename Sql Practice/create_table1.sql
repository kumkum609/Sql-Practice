CREATE DATABASE company_xyz;
USE company_xyz;

CREATE TABLE employee(
id INT PRIMARY KEY,
name VARCHAR(50),
salary INT
);
INSERT INTO employee
(id,name,salary)
VALUES
(5,"Adam",25000),
(8,"Hob",30000),
(9,"Casey",40000);

SELECT * FROM employee;