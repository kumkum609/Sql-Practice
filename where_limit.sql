CREATE DATABASE city;
use city;
create table name(
id int primary key,
name varchar(25)
);
insert into name
(id, name)
values
(254,"Pune"),
(569,"Delhi"),
(458,"Noida"),
(235,"mumbai");

select * from name;
select * 
from name 
where id > 450
limit 2;

select * 
from name
order by id desc;
