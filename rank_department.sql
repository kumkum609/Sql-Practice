create database naukri;
use naukri;
create table Employees(
Employee_Id int primary key,
Department varchar(50),
Salary int
);
insert into Employees
(Employee_Id, Department,Salary)
values
(1,"HR",60000),
(2,"Sales",75000),
(3,"HR",65000),
(4,"Sales",70000),
(5,"IT",60000);

select Employee_Id,Department,Salary,
	rank() over (partition by Department order by Salary desc) as Emp_Rank
from Employees;