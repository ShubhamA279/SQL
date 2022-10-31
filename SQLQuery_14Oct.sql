select * from Employee

drop table Employee

create table employee(
Id int identity(1,1) primary key,
Name varchar(20),
Email varchar(40),
salary decimal
)
select * from dept
select * from employee
insert into employee  values ('Amit','amit@gmail.com',25000)
insert into employee values ('amol','amol@gmail.com',35000)
insert into employee values('sahil','sahil@gmail.com',20000)
insert into employee values('rahul','rahul@gmail.com',40000)
insert into employee values('omkar','omkar@gmail.com',55000)
insert into employee values('abhi','abhi@gmail.com',55500)
insert into employee values('yash','yash@gmail.com',95000)

create table dept(
DeptId int identity(1,1) primary key,
DeptName varchar(40)

)
alter table employee add DeptId int

insert into dept values ('HR')
insert into dept values ('Admin')
insert into dept values ('Developemnt')
insert into dept values ('Testing')

update employee set deptid=1 where Id in (1,2)
update employee set deptid=2 where Id in (3,4)
update employee set deptid=3 where Id in (5,6)
update employee set deptid=4 where Id in (7)


select e.Name,e.Email,e.salary from employee e
inner join Dept d on d.DeptId=e.Id
where d.DeptId=3 and e.salary<45000

select e.Name,e.Email,e.salary from employee e
inner join Dept d on d.DeptId=e.Id
where e.salary>30000 and not d.DeptId='HR'

select e.Name,e.Email,e.salary from employee e
inner join Dept d on d.DeptId=e.Id
where d.DeptName in('developement','testing') order by e.Name

select e.Name,e.Email,e.salary from employee e
inner join Dept d on d.DeptId=e.Id
where d.DeptName in('HR','Admin') and e.salary>15000 order by e.salary desc






