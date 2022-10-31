create table Person(
Id int,
Name varchar(20),
Email varchar(30)
)
sp_help Person
select * from Person

alter table Person add City varchar(20)
alter table Person alter column city varchar(40)

insert into Person values(1,'Amit','amit@gmail','mum')
-- not null

alter table person alter column name varchar(20) not null
alter table person alter column Email varchar(30) not null
alter table person alter column Id int not null
alter table person add constraint pk_person primary key(Id)
create table Orders(
orderId int,
orderNo int,
Id int,
Constraint pk_order primary key(orderId),
constraint fk_person_order foreign key(Id) references person(Id)
)
alter table orders add constraint pk_order primary key(OrderId)
alter table person add constraint fk_person_order foreign key(Id) references person(Id)

sp_help orders
sp_help person
select * from Person
alter table person add Age int

alter table person add constraint ck_age check (age>18)



