-- where condition 
-- in, between , like operator
--  and , or logical
use sakila;
select * from actor;  
desc actor;
select * from actor;

 -- String Function--
 
 select first_name, last_name, length(first_name) from actor;
 
  select first_name, last_name, concat(first_name,' ' ,last_name) from  actor;
    select first_name, last_name, concat("Mr",first_name,'-' ,last_name) from  actor;
select first_name,last_name ,concat_ws(" ","Mr.",first_name,last_name) from actor;


select first_name , substr(first_name,2) from actor;
select first_name , substr(first_name,2,3) from actor;
select first_name , substr(first_name,-2) from actor;

select * from actor; 
select * from actor where concat(first_name,last_name)='EDCHASE';

select concat(first_name,last_name) from actor; 

-- Trim() Function--
-- dual Table (in sql dual table is the dummy table which contain one row and one column )

select first_name, 1+2 from actor;

-- dual --->>> dual is use dummy table

select trim('hello    ') from dual; 
select length(trim('hello    ')) from dual; 

-- ending k vide space ko hatane k liye------->>
 
select trim(trailing ' '  from "   hey   ") from dual;

-- starting k vide space ko hatane k liye  
select trim(leading ' '  from "   hey   ") from dual;

-- starting and ending k vide space ko hatane k liye 
select trim(both ' '  from "   hey   ") from dual;


-- numerical function-->>>
select round(13.4) from dual;

select round(13.86) from dual;
select round(13.86,1) from dual;
select round(13.86,2) from dual;
select round(13.868,2) from dual;


select round(13.869,-1) from dual;
select round(49.894,-2) from dual; 
select round(58.258,-2) from dual;

select round(746.686,-2 )from dual;
select round(746.578,-3) from dual;

-- mod function--.>>>
select mod(13,2) from dual;  
select truncate(125.36,1) from dual;










