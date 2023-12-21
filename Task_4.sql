use assignmentdb;

create table Salesperson
(
	Sno int primary key,
    Sname varchar(30),
	City varchar(30),
    Comm decimal(4,2)
);
select * from Salesperson;

insert into Salesperson values(1002,'Serres','San Jose','0.13'),
(1004,'Motika','London','0.11'),
(1007,'Rafkin','Barcelona','0.15'),
(1003,'Axelrod','New york','0.1');

create table Customer
(
	Cnm int primary key,
	Cname varchar(30),
    City varchar(30),
    Rating int,
	Sno int,
    foreign key (Sno) references Salesperson(Sno)
);

select * from Customer;

insert into Customer values(201,"Hoffman","London",100,1001),
(202,"Giovanne","Roe",200,1003),
(203,"Liu","San Jose",300,1002),
(204,"Grass","Barcelona",100,1002),
(206,"Clemens","London",300,1007),
(207,"Pereira","Roe",100,1004);

-- Retrieve the below data from above table 

-- a) All orders for more than $1000. 
-- there is no any order column so not any query.

-- b) Names and cities of all salespeople in London with commission above 0.12
select * from Salesperson
where city = 'London' and Comm > '0.12';

-- c) All salespeople either in Barcelona or in London
select Sname from Salesperson 
where city in ('London','Barcelona');

-- d) All salespeople with commission between 0.10 and 0.12. (Boundary values 
-- should be excluded).
select Sname from Salesperson 
where Comm = '0.11' ;

-- e) All customers excluding those with rating <= 100 unless they are located in Rome 
select Cname from  Customer 
where Rating<=100 or City="Roe";




