create database Task12
go
create schema Coded12
go
use Task12
go
create table Coded12.Employees(
	empId int primary key identity(1, 1) not null,
-----------------------------------------------------
	empName nvarchar(50) not null,
	empPosition nvarchar(50) not null,
	empSalary money not null,
	empDepId int not null,
	empJoinDate date not null
)
go
insert into Coded12.Employees values('John Doe', 'Manager', 6000, 1, '2020-05-06'),
									('Jane Smith', 'Developer', 4500, 2, '2021-06-15'),
									('Alan Turing', 'Analyst', 4000, 3, '2022-03-20'),
									('Grace Hopper', 'Scientist', 7000, 1, '2019-11-25'),
									('Ada Lovelace', 'Developer', 5000, 2, '2023-01-10')
go
create table Coded12.Departments(
	depId int primary key identity(1, 1) not null,
-----------------------------------------------------
	depName nvarchar(50) not null,
	depLocation nvarchar(50) not null,
)
go
insert into Coded12.Departments values('HR', 'New York'),
									  ('IT', 'San Francisco'),
									  ('Finance', 'Chicago')
go --Q1
insert into Coded12.Employees values('Elliot Alderson', 'Pentester', 3000, 2, GETDATE())
go --Q2
update Coded12.Employees set empSalary = 5000 where empName = 'Jane Smith'
go --Q3
delete Coded12.Employees where empId = 3
go --Q4
select * from Coded12.Employees where empDepId = 2
go --Q5
insert into Coded12.Departments values('Administration', 'New Jersey')
go --Q6
select * from Coded12.Departments where depLocation = 'New York'
go --Q7
update Coded12.Departments set depLocation = 'Boston' where depName = 'HR'
go --Q8
update Coded12.Employees set empSalary *= 1.10
go --Q9
delete Coded12.Employees where empDepId = 3
go --Q10
insert into Coded12.Employees values('Tyrell Wellick', 'Sr. Vice President of Technology', 3000, 2, GETDATE())
