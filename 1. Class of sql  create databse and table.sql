-- create database
create database school;
-- use of database 
use school;
-- create table 
create table students(roll_no int, namee varchar(20), address varchar(100), phone bigint, age int);
-- all column 
select * from students;
-- insert all data in table 
INSERT INTO students (roll_no,namee,address,phone,age) values(1,'HARSH','DELHI',7894561280,18),(2,'PRATIK','BIHAR',789458622,19),(3,'RIYANKA','SILIGURI',1254782478,18),(4,'DEEP','RAMNAGAR',4567895132,18),(5,'SAPTARHI','KOLKATA',456879213,18),(6,'DHANRAJ','BARBAJAR',54678132,17),(7,'ROHIT','BHARATPUT',7895165231,18),(8,'NIRAJ','ALIPUR',4564987321,15);
-- show all data in table 
select * from students;	

-- specific column
select namee,address from students;

-- condiotion 
select * from students where age=18;

-- sort /order(order  by clause)
select * from students order by age desc;

-- distict values (unique values) --- distinct keyword
select namee from students;

select distinct namee from students;
-- show all filled data into the table(students) 
select * from students;

-- perform arthmetic opertions in table 
select	max(age) from students;
select min(age) from students;
select count(roll_no) from students;
select avg(age) from students;

