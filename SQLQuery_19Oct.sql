select * from employee
select * from dept

create view view_emp as
select deptid , count(id) as empcount from employee
group by deptid
------------------
create view view_dept as
select deptname, count(deptname) as deptcount from dept
group by deptname
-------------------
create view view_emp_sal as
select salary , count(salary) as sal from employee
group by salary

select * from view_emp_sal
-----------------------------
create view emp_sal as
select * from employee where salary<50000
---------------------------------
create view emp_man as
select * from employee where managerId=1

select * from emp_man
----------------------------
select * from employee
--substring

select SUBSTRING(email,1,5) as tempname from employee where Id=4

--Concat
select CONCAT(name,' ',email) from employee

select email,len(email) from employee

select UPPER(name) from employee
select LOWER(name) from employee

select LTRIM(email) from employee
select RTRIM(email) from employee
select TRIM(email) from employee

select ROUND(salary, 2) from employee

select REVERSE(name) from employee

select REPLACE(email,'amol@gmail','sam@gmail') from employee



select * from dept
select * from employee
update employee set salary = salary+0.2*salary
where deptid=
(select deptid from dept where
DeptName='HR'
)








