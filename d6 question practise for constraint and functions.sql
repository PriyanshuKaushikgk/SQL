create database employee1;
use employee1;
create table emplyoee(id int, first_name varchar(50), surname varchar(50), department varchar(50), salary int ,hire_date date, phone_number varchar(15), city varchar(50), country varchar(50));
select * from emplyoee;
insert into emplyoee(id , first_name, surname,department, salary, hire_date , phone_number, city, country) values(3,'shyam','KUMAR','mechnical',68000,'2024-10-15','8535478922','JAIPUR','USA'),(4,'hari ','KAUSHIK','PWD',85000,'2024-10-25','4587931258','BHARATPUR','USA');
select * from emplyoee;
alter table emplyoee add column age int;
select  *  from emplyoee;
alter table emplyoee modify salary float;
select  *  from emplyoee;

-- describe table
desc emplyoee;
alter table emplyoee rename column last_name to surname;
select  *  from emplyoee;

-- 11. Write a query to increase the salary of all employees by 10% in the employees table.

update emplyoee set salary = salary * 1.10;
select  *  from emplyoee;

 

----------------customer table --------------------------

use employee1;
create table customer1(id int , first_name varchar(50), last_name varchar(50), email varchar(100), account_status varchar(20), address varchar(200),city varchar(50), 
country varchar(50),subscription_status varchar(20), created_at date);
select * from customer1;
-- for removing column by using (drop---->> alter table table_name drop column_name) 
-- 4. How do you drop a column named address from the customers table? 
alter table customer drop address;
select * from customer1;
-- 5. Write a query to add a unique constraint on the email column in the users table.
alter table customer1 modify email varchar(50) unique;
select * from customer1;
desc customer1;

-- for change the customer table name with the client
-- 6. How would you change the table name customers to clients?
rename table customer1 to client;
select * from client;


-- 9. How would you modify the column phone_number in the employees table to increase its length from 10 to 15 characters? 
alter table emplyoee modify phone_number varchar(30);


--  all tables


create table orders(order_id int , customer_id int , oder_date date , total_amount float, order_status varchar(20));
select * from orders;


insert into orders values (1,101,'2024-10-13',390.57,'Paid');


create table products(product_id int ,product_name varchar(100),category varchar(50),price float , stock int , discount float);
select * from products;
insert into products values(201,'laptop','electronics',65650,5,500.00);
insert into products values(202,'desktop','electronics',15200,6,1000.00);
select * from products;



create table users(id int, username varchar(50),first_name varchar(50),last_name varchar(50),email varchar(100),passwordd varchar(100), last_login date);
select * from users;
insert into users values(4, 'priyanshukaushik','Priyanshu','Kaushik','priyanshukaushik@gmail.com','hello@1','2024-10-18');
insert into users values(5, 'laveshkaushik','lavesh','Kaushik','laveshkaushik@gmail.com','heo@1','2024-10-17');

-- 12. How would you update the email column of the users table for the user with id = 5 to newemail@example.com?
update users set email='newemail@gmail.com' where id = 5;
select * from users;



create table log(log_id int, log_message varchar(255), log_date date);
select * from log;


create table order_history(order_history_id int , customer_id int , order_id int , order_date date);
select * from order_history;
-- 10. Write a query to rename the table orders_history to archived_orders.
rename table order_history to archiverd_orders;
select * from archiverd_orders;

-- 13. Write a query to set the status column to 'active' for all customers who have made at least one purchase in the customers table.
select * from customer1;
insert into customer1 values (3,'priyanshu','kaushik','priyasnhu@gmail.com','active','shyam nagar bharatpur','bharatpur','india','paid',curdate());
update customer1 set account_status ='inactive' where  subscription_status ='paid';


-- 14. Update the department of all employees in the employees table who belong to the IT department to Technology.
select * from emplyoee;
 
update emplyoee set  department = 'IT ' where department ='CIVIL';

-- 15. Write a query to set the price of all products in the products table where category = Electronics to price * 1.05 (increase by 5%).

show tables;
select * from products;
update products set price = price * 1.05;

-- 16. How would you update multiple columns, such as setting the first_name to 'John' and last_name to 'Doe', for the user with id = 7? 


select * from users;
update users set first_name='john', last_name= 'Doe' where id = 4;

-- 17. Write a query to reset the discount of all products in the products table to 0 if their stock is less than 10.
select * from products;

update products set discount = 0 where stock <10; 

-- 18. Update the last_login date of the user with username = johndoe to the current date.
select * from users;
update users set last_login = curdate() where  username = 'priyanshukaushik';

-- 19. Write a query to nullify the address column in the customers table for users who no longer have an active subscription.
show tables;

select * from customer1;
insert into customer1 values(2,'lavesh','kaushik','lavesh@gmail.com','active','near mansarover metro ','jaipur','india','paid',curdate());

update customer1 set address = 'nullify' where account_status = 'inactive';

-- 20. How would you update the city of all employees in the employees table to New York where country = USA?

show tables;

select * from emplyoee;  

update emplyoee set country = 'new York' where country = 'USA';

-- -----------------------delete-----------------

-- 21. Write a query to delete all employees from the employees table whose salary is less than 30000.

delete from emplyoee where salary <  75000;
select * from emplyoee;


-- 22. How would you delete all orders from the orders table where the order_date is older than one year? 

select * from orders;

update orders set oder_date = '2023-10-12' where order_id = 1;
delete from orders where year(oder_date) =2023;
