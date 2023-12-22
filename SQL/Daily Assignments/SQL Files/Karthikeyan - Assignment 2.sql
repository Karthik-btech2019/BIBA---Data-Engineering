use HospDB;

CREATE TABLE Doctor_Info  
(  
Doctor_ID Int,    
Doctor_Name VARCHAR (100),    
Doctor_Specialist VARCHAR (80),    
Doctor_Gender Varchar (20),  
Doctor_Country Varchar (80), Doctor_salary int   
);

INSERT INTO Doctor_Info (Doctor_ID, Doctor_Name, Doctor_Specialist, Doctor_Gender, Doctor_Country,Doctor_salary) VALUES
(1015, 'Harini', 'Diabties_Specialist', 'Female', 'United States',75000),  
(1044, 'Monisha', 'Cancer_Specialist', 'Female', 'United States',150000),  
(1025, 'Kavi', 'Corona_Specialist', 'Female', 'Europe',65000),
(1010, 'Bala', 'Heart_Specialist', 'Male', 'Japan',85000),
(1006, 'Karthik', 'Neuro_Specialist', 'Male', 'Canada',175000); 

select * from Doctor_Info;

SELECT COUNT(Doctor_ID), Doctor_Country from Doctor_Info GROUP BY Doctor_Country; 


select sum(Doctor_salary) from Doctor_Info;
select avg(Doctor_salary) from Doctor_Info;
select max(Doctor_salary) from Doctor_Info;

select * from Doctor_Info order by Doctor_salary desc;

SELECT COUNT(Doctor_ID), Doctor_Country FROM Doctor_Info GROUP BY Doctor_Country HAVING COUNT(Doctor_ID) > 1;

begin tran;
delete from Doctor_Info where Doctor_ID=1006;
commit; 

begin tran;
delete from Doctor_Info where Doctor_ID=1010;
rollback; 

select * from Doctor_Info;
rollback;

INSERT INTO Doctor_Info (Doctor_ID, Doctor_Name, Doctor_Specialist, Doctor_Gender, Doctor_Country,Doctor_salary) VALUES
(1006, 'Karthik', 'Neuro_Specialist', 'Male', 'Canada',175000); 

begin tran;
save tran s1;

delete from Doctor_Info where Doctor_Name='bala';
save tran s2;

delete from Doctor_Info where Doctor_Name='Kavi';
save tran s3;

rollback tran s1;

create table Patient_Info(Patient_ID int, Patient_Name varchar(20), Patient_Age int, Patient_Gender varchar(10), Patient_Country varchar(20));

insert into Patient_Info(Patient_ID, Patient_Name, Patient_Age, Patient_Gender, Patient_Country) values 
(103,'Nitish',28,'Male','Canada'),
(106,'Ruben',34,'Male','United States'),
(102,'Deeksha',30,'Female','Australia'),
(110,'Bhavya',40,'Female','India');

select * from Patient_Info;

select Doctor_ID from Doctor_Info union select Patient_ID from Patient_Info;

declare @d int;
set @d=10;
select @d+20;

declare @dob datetime;
set @dob='Apr 6,2002';
select @dob - 100;

/* Constraint in SQL */
create table Employee(Emp_ID int not null,Emp_Name varchar(20),Emp_Salary int default 10000);
insert into Employee values (1001,'John',7000);
select * from Employee;

create table Stud_Info(ID int unique, Stud_Name varchar(15), Stud_Age int check(Stud_Age between 15 and 18));
insert into Stud_Info values(002,'Aadhi',20);
insert into Stud_Info values(006,'Abu',17);
select * from Stud_Info;

/* Primary Key and Foreign Key */
create table persons(id int primary key,first_name varchar(15),last_name varchar(15),age int);
insert into persons values (101,'karthik','Radhakrishnan',22),(102,'Ben','Stone',35),(103,'Zeke','Londan',29);
select * from persons;

create table orders(order_id int, order_num int,id int);
insert into orders values(1,5755,102),(2,4578,103),(3,8839,102),(4,2837,101)
select * from orders;
