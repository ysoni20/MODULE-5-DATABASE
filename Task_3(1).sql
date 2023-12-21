use assignmentdb;

create table Employee
(
	Employee_id int primary key,
	First_name varchar(20),
    Last_name varchar(20),
	Salary int,
	Joining_date varchar(50),
	Department varchar(30)
);

select * from Employee;

create table Incentive
(
	Employee_ref_id int,
	Incentive_date varchar(30),
	Incentive_amount int,
    foreign key (Employee_ref_id) references Employee(Employee_id) 
);

insert into Employee values(2,"Michael","Clarke",800000,"01-jan-13 12.00.00 AM","Insurance"),
(3,"Roy","Thomas",700000,"01-Feb-13 12.00.00 AM","Banking"),
(4,"Tom","Jose",600000,"01-Feb-13 12.00.00 AM","Insurance"),
(5,"Jerry","Pinto",650000,"01-Feb-13 12.00.00 AM","Insurance"),
(6,"Philip","Mathew",750000,"01-jan-13 12.00.00 AM","Services"),
(7,"TestName1","123",650000,"01-jan-13 12.00.00 AM","Services"),
(8,"TestName2","Lname%",600000,"01-Feb-13 12.00.00 AM","Insurance");

insert into Incentive values(2,"01-Feb-13",3000),
(3,"01-Feb-13",4000),
(1,"01-Jan-13",4500),
(2,"01-Jan-13",3500);

select * from Incentive;

-- A>Get First_Name from employee table using Tom name “Employee Name”
select First_name from Employee where First_name = "Tom";

-- B>2 Get First_Name from employee table using Tom name “Employee Name”
select First_name,Joining_date,Salary from Employee;

-- C> Get all employee details from the employee table order by First_Name 
-- Ascending and Salary descending?
select * from Employee e 
order by First_name asc,
Salary desc;

-- D>Get employee details from employee table whose first name contains ‘J’
select * from Employee e
where First_name like'J%';

-- E> Get department wise maximum salary from employee table order by salary 
-- ascending? 

-- SELECT colunm_name, MAX(column_name) FROM table_name GROUP BY column_name; 

select Max(Salary),Department from Employee group by Department;

-- F>select first_name, incentive amount from employee and incentives table for 
-- those employees who have incentives and incentive amount greater than 3000 
Select First_name,Incentive_amount from Employee A 
inner join Incentive B on A.Employee_id = B.Employee_ref_id
and Incentive_amount > 3000 


