--check constraint

create table Person1(
Id int,
name varchar(20),
age int,
constraint ck_age check (age>=18)
)
sp_help person1
--while giving alter command
drop table person1
--alter table person add constraint ck_age check (age>=18)

--default const
sp_help person2
drop table person2
create table Person2(
Id int,
name varchar(20),
age int,
country varchar(20)
--country varchar(20) default 'India'
)

alter table person add constraint df_country default 'India' for Country
--//////////////

-- index
sp_help person
drop table person
create table Person(
Id int primary key,
name varchar(20),
age int,
country varchar(20)
)
drop table person
create index index_person on person(Id,age)
create unique  index ind_per on Person (Id)

-------------------------------------------
-- Insert Query
create table Person(
Id int identity(1,1) primary key,
name varchar(20) not null,
city varchar(10)
)

create table Employee(
EId int identity(1,1) primary key,
name varchar(20) not null,
email varchar(40) not null,
salary decimal,
dept varchar(20)

)
select * from employee

insert into Employee values('kishor','kishor@gmail.com',45000,'AWS')
insert into Employee values('amit','amit@gmail.com',20000,'HR')
insert into Employee values('amol','amol@gmail.com',40000,'Testing')
insert into Employee values('yash','yash@gmail.com',30000,'Developement')
insert into Employee values('shreyas','shreyas@gmail.com',45000,'HR')
insert into Employee values('mahendra','mahendra@gmail.com',70000,'Testing')

update employee set name = 'Ramesh' , salary = 20000 where EId=3

delete from Employee where eid=4


