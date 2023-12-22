use vehicleDB;

select * from customer;
select * from orders;
select * from vehicle;

/* Equi Join */
select c.cust_id,c.cust_name,o.order_id,o.purchase_data from customer as c,orders as o where c.cust_id=o.cust_id;

/* Self Join */
select v1.order_id as customer_1,v2.order_id as customer_2, v1.fuel_type from vehicle v1, vehicle v2 where v1.vehicle_id <> v2.vehicle_id and v1.fuel_type=v2.fuel_type order by v1.fuel_type;

/* Joins with Group by clause */
select c.cust_id,c.cust_name,sum(o.price) as total_price from customer as c join orders as o on c.cust_id=o.cust_id group by c.cust_id,c.cust_name; 

/* Joins with having clause */
select c.cust_id,c.cust_name,c.cust_address,o.purchase_data,sum(o.price) as total_price from customer as c join orders as o on c.cust_id=o.cust_id group by c.cust_id,c.cust_name,c.cust_address,o.purchase_data having sum(o.price) < 1000000;

/* Grouping set */
CREATE TABLE ProductQty( Id INT IDENTITY(1,1), Region VARCHAR(100), Product VARCHAR(50), Year INT, Quantity INT)

INSERT INTO ProductQty(Region, Product, Year, Quantity)  
VALUES('East', 'Computer', 2020, 13000), ('South', 'Computer', 2020, 45000), ('North', 'Computer', 2020, 25000), ('East', 'Hard Disk', 2020, 1900), ('West', 'Computer', 2021, 25000), ('South', 'Hard Disk', 2021, 5500),  
('West', 'Hard Disk', 2021, 6500), ('East', 'Pen Drive', 2021, 1200), ('North', 'Mouse', 2019, 1600),('South', 'Pen Drive', 2019, 2700),  
('East', 'Mouse', 2019, 2000),('West', 'Pen Drive', 2019, 1900);  

select * from ProductQty;

/* Displaying Product with total purchase based on the region and year */
SELECT Region, Year,product, SUM(Quantity) AS TotalPurchaseQty    
FROM ProductQty   
GROUP BY GROUPING SETS  
((Region),(Year),(Product),(Region, Year,product),())   
ORDER BY Region, Year,Product; 

/* Querying data by sub-queries */
select Id, Region, product,year from ProductQty where year = 2021 and Quantity >10000;

/* Exists Clause */
select cust_name from customer where EXISTS(select purchase_data from orders where customer.cust_id=orders.cust_id and price < 500000);

/* Any Keyword */
select cust_id from orders where order_id = ANY(select order_id from vehicle where color='Red');

/* All Keyword */
select order_id,Quantity from orders where order_id = ALL(select order_id from vehicle where cust_id<110);

/* Nested Sub-Query */
select cust_name from customer where cust_id in (select cust_id from orders)

/* Co-related sub-query */
select cust_id,cust_name from customer c where exists(select 1 from orders o where o.cust_id=c.cust_id and o.Quantity > (select avg(Quantity)from orders where cust_id =c.cust_id));
/* The above query checks if there exists at least one order for each customer where the quantity is greater than avg quantity */

/* UNION */
select cust_id from customer UNION select cust_id from orders; /* Returns cust_id values in both the tables as dintinct values */

/* UNION ALL */
select cust_id from customer UNION ALL select cust_id from orders; /* Returns cust_id values in both the tables as non-dintinct values */

/* INTERSECT */
select cust_id from customer INTERSECT select cust_id from orders; /* Returns cust_id values whi has placed order and has cust_ id in customer table*/

/* EXCEPT */
select cust_id from customer EXCEPT select cust_id from orders; /* Returns cust_id values except the cust_id who placed order */

/* MERGE */
CREATE TABLE Products(  
    ID INT,  
    Product_Name VARCHAR(65),  
    Price INT)  
      
INSERT INTO Products(ID, Product_Name, Price) VALUES   
(1, 'Table', 1500), (2, 'Desk', 1000),  
(3, 'Chair', 750), (4, 'Computer', 2250);

CREATE TABLE TargetProducts(  
    ID INT,  
    Product_Name VARCHAR(65),  
    Price INT)  
      
INSERT INTO TargetProducts(ID, Product_Name, Price) VALUES  
(1, 'Table', 1500),(2, 'Desk', 1500),  
(5, 'Bed', 1000), (6, 'Cupboard', 350); 

MERGE TargetProducts AS Target USING Products  AS Source ON Source.ID = Target.ID  
WHEN NOT MATCHED BY Target THEN INSERT (ID, Product_Name, Price) VALUES (Source.ID, Source.Product_Name, Source.Price); 
select * from TargetProducts;