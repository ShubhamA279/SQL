drop table Employee
create table Employee(
EId int identity(1,1) primary key,
name varchar(20) not null,
email varchar(40) not null,
salary decimal,
dept varchar(20)

)
select * from employee1

insert into Employee values('kishor','kishor@gmail.com',45000,'AWS')
insert into Employee values('amit','amit@gmail.com',20000,'HR')
insert into Employee values('amol','amol@gmail.com',40000,'Testing')
insert into Employee values('yash','yash@gmail.com',30000,'Developement')
insert into Employee values('shreyas','shreyas@gmail.com',45000,'HR')
insert into Employee values('mahendra','mahendra@gmail.com',70000,'Testing')

update employee set name = 'Ramesh' , salary = 20000 where EId=3

delete from Employee where eid=4
--------------------------------------------------------------------------

-- Search pattern with like clause
select * from Employee
select * from employee where Name like 'a%'  -- start with a
select * from Employee where name like '%t'

select * from employee where name like 'A___'
select * from employee where name like '___l'

select * from employee where name like '%o%'
select * from employee where name like '%[a-j]%'
select * from employee where name not like '[aks]%'
select * from employee where dept not like 'd%'

------
-- in clause

select * from Employee where dept in ('HR','Developement')

select * from Employee where dept not in ('HR','Developement')

select * from Employee where EId in (1,4,7)
select * from Employee where EId  not in (1,4,7)

------------------
-- Logical and , or , not

select * from employee where dept = 'HR' and dept='Aws'

select * from employee where dept = 'HR' or dept='Aws'

select * from Employee where not dept = 'AWS'

select * from Employee order by salary
select * from Employee order by salary desc

select * from Employee where dept='hr' order by name
select * from Employee where dept= 'testing' order by Eid
-----------------------------------------------

drop table Employee
-----example
-----add column city to existing table and add values of city and perform operations
select * from employee
create table Employee(
EId int identity(1,1) primary key,
name varchar(20) not null,
email varchar(40) not null,
salary decimal,
dept varchar(20)

)
select * from employee
alter table employee add City varchar(20)
update Employee set City= null 'nashik' where Name='kishor' -- for making all city value null
update Employee set City=  'nashik' where Name='kishor'

update Employee set City= 'mumbai' where Name='amit'
update Employee set City= 'Pune' where Name='amol'
update Employee set City= 'nashik' where Name='yash'
update Employee set City= 'Pune' where Name='shteyas'
update Employee set City= 'mumbai' where Name='mahendra'
update Employee set City= 'mumbai' where Name='rahul'


insert into Employee values('kishor','kishor@gmail.com',45000,'AWS')
insert into Employee values('amit','amit@gmail.com',20000,'HR')
insert into Employee values('amol','amol@gmail.com',40000,'Testing')
insert into Employee values('yash','yash@gmail.com',30000,'Developement')
insert into Employee values('shreyas','shreyas@gmail.com',45000,'HR')
insert into Employee values('mahendra','mahendra@gmail.com',70000,'Testing')
insert into Employee values('rahul','rahul@gmail.com',45000,'Developement')

select * from employee where dept='developement' and salary>=25000

select * from employee where (dept='hr' and  City='Mumbai')

select * from employee where (dept='developement' and name like 'y%')

select * from Employee order by name
select * from employee order by name desc

select * from employee where dept = 'developement' order by name desc


------------------------------------

-- Aggregate function
--1 Count
--2 Sum
-- 3 Avg
-- 4 Max
-- 5 Min
select count(Eid) as totalcount from Employee
select count(distinct dept) from Employee

select count(*) as totalcount from Employee



select sum(salary) from Employee

select avg(salary) from Employee

select max(salary) as maxsalary from Employee

select min(salary) as minsalary from Employee














