create database company;
use company;
create table google(id int, namee varchar(20),pincode int, salary int);
select * from google;
INSERT INTO google (id,namee,pincode,salary) values(1,'priyanshu',47852,600000),(2,'haryy',002458,700000);
-- all column
select * from google;

-- specific column
select pincode,namee from google;

-- condiotion 
select * from google where salary=600000;

-- sort /order(order  by clause)
select * from google order by salary desc;

-- distict values (unique values) --- distinct keyword

select namee from google;
select distinct namee from google;
select * from google;
select distinct * from google;
select namee,pincode from google;
select distinct namee,pincode from google;