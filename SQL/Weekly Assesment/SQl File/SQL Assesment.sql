use vehicleDB;

select * from customer;
select * from orders;
select * from vehicle;

/* Inner Join */
select customer.cust_id,customer.cust_name,orders.order_id,orders.purchase_data from customer inner join 
orders on customer.cust_id=orders.cust_id;

/* Left Join */
select customer.cust_id,customer.cust_name,orders.order_id,orders.purchase_data from customer left join 
orders on customer.cust_id=orders.cust_id;

/* Right Join */
select orders.order_id,orders.Quantity,vehicle.vehicle_id,vehicle.model from orders right join 
vehicle on orders.order_id=vehicle.order_id;

/* Joins with sub-query */
select customer.cust_id,customer.cust_name,orders.order_id,orders.purchase_data,orders.price from customer inner join orders 
on customer.cust_id=orders.cust_id where orders.price < 1000000;

/* Manipulating the data by Group by clause */
select count(vehicle_id),fuel_type from vehicle group by fuel_type;
select count(order_id) as num_of_orders,Quantity from orders group by Quantity;

/* Manipulating the data by Group by clause and having clause */
select count(vehicle_id),fuel_type from vehicle group by fuel_type having count(vehicle_id)>2;
select cust_id,cust_name,cust_age from customer group by cust_id,cust_name,cust_age having cust_age <30;