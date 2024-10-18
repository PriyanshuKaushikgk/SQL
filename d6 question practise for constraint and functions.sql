create database employee1;
use employee1;
create table emplyoee(id int, first_name varchar(50), last_name varchar(50), department varchar(50), salary int ,hire_date date, phone_number varchar(15), city varchar(50), country varchar(50));
select * from emplyoee;
insert into emplyoee(id , first_name, last_name,department, salary, hire_date , phone_number, city, country) values(1,'RAM','KUMAR','CIVIL',65000,'2024-10-12',8535478922,'JAIPUR','INDIA'),(2,'OM ','KAUSHIK','PWD',85200,'2024-10-25',4587931258,'BHARATPUR','INDIA');
select * from emplyoee;
alter table emplyoee add column age int;
select  *  from emplyoee;
alter table emplyoee modify salary float;
select  *  from emplyoee;

-- describe table
desc emplyoee;
alter table emplyoee rename column last_name to surname;
select  *  from emplyoee;

-- ----------------customer table --------------------------

use employee1;
create table customer1(id int , first_name varchar(50), last_name varchar(50), email varchar(100), account_status varchar(20), address varchar(200),city varchar(50), 
country varchar(50),subscription_status varchar(20), created_at date);
select * from customer1;
-- for removing column by using (drop---->> alter table table_name drop column_name) 
alter table customer drop address;
select * from customer;
alter table customer modify email varchar(50) unique;
select * from customer;
desc customer;

-- for change the customer table name with the client

rename table customer to client;
select * from client;



  