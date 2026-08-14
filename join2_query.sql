create database join_question;
use join_question;
create table source(
id int,
name varchar(25)
);
insert into source
(id,name)
values
(1,"A"),
(2,"B"),
(3,"C"),
(4,"D");

create table target(
id int,
name varchar(25)
);
insert into target
(id,name)
values
(1,"A"),
(2,"B"),
(4,"X"),
(5,"E");

-- 1. records that are in source table but not in target table
-- 2. records that are in target table but not in source table
-- 3. both tables but have different name values

select s.id,'New in source' as comment
from source s
left join target t
on s.id = t.id
where t.id is null
union all
select t.id,'New in target' as comment
from source s
right join target t
on s.id = t.id
where s.id is null
union all
select s.id,'Mismatch' as comment
from source s
inner join target t
on s.id = t.id
where s.name != t.name;