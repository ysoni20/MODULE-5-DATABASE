create database assignmentDB;
use assignmentDB;

create table Student
(
Roll_no int primary key,
name varchar(20),
Branch varchar(50)
);

insert into Student values
(1,'Jay','Computer Science'),
(2,'Suhani','Electronic and Com'),
(3,'Kirti','Electronic and Com');

select * from Student;

create table Exam(
id int primary key auto_increment,
Roll_no int,
S_code varchar(10),
Marks int,
P_Code varchar(10),
foreign key(Roll_no) references Student(Roll_no)
);

insert into Exam values
(2,1,'CS12',60,'CS'),
(3,2,'EC101',66,'EC'),
(4,2,'EC102',70,'EC'),
(5,3,'EC101',45,'EC'),
(6,3,'EC102',50,'EC');
select * from Exam;








