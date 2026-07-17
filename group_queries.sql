CREATE DATABASE method;
USE method;
CREATE TABLE payment(
customer_id INT PRIMARY KEY,
customer VARCHAR(25),
mode VARCHAR(25),
city VARCHAR(50)
);

INSERT INTO payment
(customer_id,customer,mode,city)
VALUES
(102,"Olivia","NetBanking","Portland"),
(103,"Ethan sinclair","Credit card","Miami"),
(104,"Maya","Credit card","Seattle"),
(105,"Liam Donuvam","Credit card","Denver"),
(106,"Stophia","NetBanking","New Orleans"),
(107,"Caleb","Credit card","Minneapolis"),
(108,"Ava Patel","Debit card","Phoenix"),
(109,"Lucas Cartel","Debit card","Boston"),
(110,"Jackson Brooke","Credit card","Boston");
SELECT mode , COUNT(customer_id)
FROM payment
GROUP BY mode
HAVING count(mode) >=2
ORDER BY mode;
