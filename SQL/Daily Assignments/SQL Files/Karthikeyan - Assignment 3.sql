create database vehicleDB;
use vehicleDB;

/* Create Customer Table */
create table customer(cust_id int primary key, cust_name varchar(20), cust_age int, cust_address varchar(25), contact int);
insert into customer values(101, 'Ben Stone', 37,'Los Angeles',55688733),(102, 'Zeke Landon', 29,'New York',67899272),(103, 'Saanvi Bhaui', 25,'Miami',82053972),(104, 'Mick Stone', 27,'Boston',73063748),(105, 'Vance Robert', 37,'Atlanta',94826732);
select * from customer;

/* Create Orders Table */
create table orders(order_id int primary key, cust_id int, purchase_data date, Quantity int, price int);
insert into orders values(6002,105,'2018-08-19',1,1000000),(6003,101,'2015-03-10',3,2800000),(6004,102,'2022-02-05',1,500000),(6005,104,'2017-09-22',2,350000);
insert into orders values(6006,110,'2020-04-06',1,100000),(6007,115,'2017-07-20',4,4800000);
select * from orders;

/* Create vehicle Table */
create table vehice(vehicle_id int primary key, order_id int,fuel_type varchar(10),model varchar(10),color varchar(15));
EXEC sp_rename 'vehice','vehicle';
insert into vehicle values(1003, 6002,'petrol','BMW','Green'),(1006, 6003,'petrol','Benz','Black'),(1015, 6004,'Diesel','volvo','Blue'),(1042, 6001,'petrol','MiniCooper','Red'),(1010, 6005,'Diesel','Audi','Red');
select * from vehicle;

/* INNER JOIN */
select customer.cust_id, customer.cust_name,orders.order_id,orders.purchase_data from customer inner join orders on customer.cust_id=orders.cust_id;

/* LEFT JOIN */
select orders.order_id, orders.cust_id,orders.purchase_data,vehicle.vehicle_id,vehicle.model,vehicle.color from orders left join vehicle on orders.order_id=vehicle.order_id;

/* RIGHT JOIN */
select customer.cust_id, customer.cust_name,orders.order_id,orders.purchase_data,orders.price from customer right join orders on customer.cust_id=orders.cust_id;

/* FULL JOIN */
select customer.cust_id, customer.cust_name,orders.order_id,orders.purchase_data from customer full outer join orders on customer.cust_id=orders.cust_id;

/* CROSS JOIN */
select orders.order_id, orders.cust_id,orders.purchase_data,vehicle.vehicle_id,vehicle.model,vehicle.color from orders cross join vehicle;

/* String Functions */
SELECT ascii ('KARTHIK') /* Returns the ASCII value of the string */
SELECT CHAR(72); /* Returns the Charcter coressponding to ASCII value */
SELECT len ('KARTHIKEYAN') /*  Returns the length of the String*/
SELECT UPPER(cust_name) from customer; /*  Returns the String values in Upper Case*/
SELECT LOWER(cust_name) from customer; /*  Returns the String values in Lower Case*/
SELECT REVERSE(cust_name) from customer; /*  Returns the String values in Reverse Order*/
SELECT STR(cust_id) from customer; /*  Returns the Customer ID in String Format*/

/* Date Functions */
SELECT DATEDIFF(day,'2023-09-22','2023-04-06'); /* Returns no of days inbetween the diff dates */
SELECT datepart (mm, '2008-04-06'); /* Returns month of the date */
SELECT dateadd (mm, 5, '2008-04-06'); /* Returns no of months after the date */

/* MATHEMATICAL Functions */
SELECT abs (-77); /* Returns Absolute value */
SELECT sin(1.5); /* Returns Angle value */
SELECT log (5.4); /* Returns logarithmic value */
SELECT ceiling (16.25); /* Returns nearst smallest or largest value */

/* RANK Functions */
select cust_id, cust_name, cust_age, ROW_NUMBER() OVER(ORDER BY cust_age DESC) as rank from customer; /* Allocates Rank NUmber based on Customer Age */
select cust_id, cust_name, cust_age, RANK() OVER(ORDER BY cust_id) as rank from customer; /* Allocated RANK based on customer ID */
select vehicle_id,fuel_type, DENSE_RANK() OVER(ORDER BY fuel_type DESC) as rank from vehicle; /* Allocated Unique ranks for multiple records */
select order_id, cust_id, price, NTILE(1) over ( order by price ) as rank from orders where price > 1000000; /* Allocated Rank 1 to Records with price above 100000 */

/* SYSTEM Functions */
SELECT HOST_NAME() as 'HOSTNAME'; /* Returns HOST Name */
SELECT SUSER_NAME() as 'USER NAME'; /* Returns the USER Name */
SELECT SUSER_ID('Karthik\Karthik'); /* Return the USER ID */

/* AGGREGATE Functions */
Select avg(price) from orders; /* Returns the average value of the price */
Select count(distinct purchase_data) from orders; /* Returns the unqiue values on purchase dates */
Select min(price) from orders; /* Returns the Minimum value of the price */
Select max(price) from orders; /* Returns the Maximum value of the price */
select sum(price) from orders; /* Returns the Sum value of the price */

/* GROUP BY CLAUSE */
SELECT COUNT(vehicle_id) as 'Total_Count', fuel_type FROM vehicle GROUP BY fuel_type; /* Diff fuel type vehicle's which are sold, grouped togther */

