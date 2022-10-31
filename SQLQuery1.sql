create table Person(
Id int not null,
fname varchar(40) not null,
city varchar(20) not null,
Email varchar(40)
)
alter table Person add constraint pk_person primary key(Id)
alter table person alter column Id int not null
-- select * from Person
sp_help person

sp_help orders

create table Orders(
orderId int,
OrderNo int,
Id int

constraint pk_orders primary key(orderId),
constraint fk_person_orders foreign key(Id) references Person(Id)
)





