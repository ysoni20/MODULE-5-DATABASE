use assignmentdb;
create table task3
(
	First_Name varchar(30),
    Last_name varchar(30),
	Address varchar(100),
    city varchar(20),
	Age int
);

select * from task3;

insert into task3 values
('Mickey','Mouse','123 Fantasy Way','Anaheim',73),
('Bat','Man','321 Cavern Ave','Gotham',54),
('Wonder','Woman','987 Truth Way','Paradise',39),
('Donald','Duck','555 Quack Street','Mallard',65),
('Bugs','Bunny','567 Carrot Street','Rascal',58),
('Wiley','Coyote','999 Acme Way','Canyon',61),
('Cat','Woman','234 Purrfect Street','Hairball',32),
('Tweety','Bird','543','Itotltaw',28);
