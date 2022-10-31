select * from employee
select * from EmployeeAudit

create table EmployeeAudit(
auditid int identity(1,1) primary key,
empid int,
dt varchar(20),
info varchar(40)
)

create trigger tr_emp_audit
on employee for insert
as begin
declare @empid int
select @empid=Id from inserted
insert into EmployeeAudit
values(@empid,cast(getdate() as varchar(20)),'inserted')
end
--------------
insert into employee values('test5','test5@gmail',55000,1,2)
insert into employee values('test6','test6@gmail',54000,1,2)

-----------

create trigger tr_emp_delete
on employee for delete
as begin
declare @empid int
select @empid=Id from deleted
insert into EmployeeAudit
values(@empid,cast(getdate() as varchar(20)),'deleted')
end

delete from employee where id=13

