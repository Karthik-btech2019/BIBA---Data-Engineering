CREATE DATABASE CustDB;
USE CustDB;

create table customer(cust_id int, cust_name varchar(255), cust_age int, cust_add varchar(255), cust_conct int);

insert into customer values(001,'ABISHEK',21,'Salem',12345), (002,'ENAYATHULLA',20,'Namakkal',54321);
insert into customer values(003,'KARTHIK',23,'Karur',62413), (004,'KAVIN',21,'Namakkal',42310);

SELECT * FROM customer;

SELECT cust_name FROM customer WHERE cust_age > 20;

UPDATE customer SET cust_gender = 'MALE' WHERE cust_id=002;

SELECT * FROM customer ORDER BY cust_name DESC;

ALTER TABLE customer ADD cust_gender VARCHAR(10);

EXEC sp_rename 'customer', 'Cust_info'; 

SELECT * FROM cust_info WHERE cust_add = 'Namakkal' AND cust_age=22;

SELECT * FROM cust_info WHERE cust_add = 'Namakkal' OR cust_age=21;

SELECT * FROM cust_info WHERE NOT cust_add = 'Namakkal';

DELETE FROM cust_info WHERE cust_id = 004;

SELECT * FROM cust_info;

CREATE DATABASE dummy;
DROP DATABASE dummy;

CREATE TABLE products (product_name nvarchar(50),price int)

INSERT INTO products (product_name, price) VALUES('Desktop Computer',800),('Laptop',1200),('Tablet',200),('Monitor',350),('Printer',150);

DROP products;