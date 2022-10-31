
--Stored Procedure
create procedure sp_employee_select
as begin
select * from employee
end


exec sp_employee_select
---------------

create procedure sp_employee_insert
(
@name varchar(20),
@email varchar(40),
@salary decimal,
@deptid int,
@manid int
)
as begin
insert into employee values(@name,@email,@salary,@deptid,@manid)
end

exec sp_employee_insert
@name = 'test4',
@email = 'test@gmail',
@salary = 25000,
@deptid =2,
@manid = 1

----------------------
create proc sp_employee_update

as begin 
update employee set salary=45000,deptid=1,managerId=2  where id=10
end

exec sp_employee_update

---------------
--Update
create proc sp_employee_updt
(
@salary decimal,
@deptid int,
@id int
)
as begin
update employee set salary=@salary,deptid= @deptid where id= @id
end

exec sp_employee_updt
@salary=25000,
@deptid=2,
@id=9
select * from employee
----------
--Delete
create proc sp_Emp_delete
as begin
delete from employee where id=10
end

exec sp_Emp_delete

-------------
create procedure sp_emp_details
(@id int
)
as begin
select name,salary, deptid from employee where id=@id
end

exec sp_emp_details
@id=5


-------------------------------------

--Functions

create function getempbydept(@deptid int)
returns table
as 
return (select name from employee where deptid= @deptid)


select * from getempbydept(1)









