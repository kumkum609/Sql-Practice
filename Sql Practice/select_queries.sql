CREATE DATABASE college;
USE college;

CREATE TABLE student(
rollno INT PRIMARY KEY,
name VARCHAR(50),
marks INT NOT NULL,
grade VARCHAR(2),
city VARCHAR(25)
);
INSERT INTO student
(rollno,name,marks,grade,city)
VALUES
(105,"Anil",78,"C","Pune"),
(106,"Bhumika",93,"A","Mumbai"),
(107,"Chetan",85,"B","Mumnai"),
(108,"Dhruv",98,"A","Pune"),
(109,"Tony",12,"E","Delhi");

SELECT name,marks FROM student;
SELECT * FROM student;
SELECT DISTINCT city FROM student;
SELECT * FROM student WHERE marks > 80;
SELECT * FROM
student WHERE marks > 80 AND city ="Delhi";