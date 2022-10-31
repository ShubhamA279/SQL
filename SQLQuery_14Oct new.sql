select * from employee
select * from dept

--join
alter table Employee add deptname varchar(20)
update employee set deptname = 'HR'  where Id in(1,2) 
update employee set deptname = 'Admin'  where Id in(3,4) 
update employee set deptname = 'Developement'  where Id in(5,6) 
update employee set deptname = 'Testing'  where Id in(7) 
insert into employee values('test1','test1@gmail',45000,3,null)
insert into employee values('test2','test2@gmail',40000,4,null)
insert into employee values('test3','test3@gmail',42000,4,null)



-- null / not null

select * from employee where Deptname is null

select * from employee where salary > 40000 and deptname is not null
select * from employee where salary < 30000 
----------------------------------------------------------------------

-- JOIN 


alter table employee drop column deptid 


select * from dept
select * from employee
alter table employee add deptid int
alter table employee drop column deptname
update employee set deptid=1 where Id in(1,2)
update employee set deptid=2 where Id in(3,4)
update employee set deptid=3 where Id in(5,6)
update employee set deptid=4 where Id in(7)


-- inner join
select e.Id, e.Name, e.salary, d.DeptName from employee e
inner join dept d on d.DeptId=e.DeptId

-- left join
select e.Id, e.Name, e.salary, d.DeptName from employee e
left join dept d on d.DeptId=e.DeptId

-- right join

select e.Id, e.Name, e.salary, d.DeptName from employee e
right join dept d on d.DeptId=e.DeptId


-- self join
alter table employee add managerId int
update employee set managerId = 1 where Id in(3,4,5,8)
update employee set managerId = 2 where Id in(6,7,9,10)

select e.Id, e.Name as employee, m.Name as manager  from employee e,employee m
where m.Id=e.ManagerId




