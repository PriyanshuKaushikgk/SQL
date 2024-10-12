use sakila;
show tables;
select * from actor;

-- projection 
select actor_id, first_name from actor;

--  where condition
select * from actor where first_name = 'NICK';
select * from actor where actor_id != 3;

 -- between operator
 select * from actor where actor_id between 3 and 6;
 
 -- in operator (for specific value)
  select * from actor where actor_id in (3,6);
select * from actor where actor_id not in (1,3,6);

select first_name ,last_name from actor where actor_id in (1,3,6);

select first_name,last_name from actor where actor_id in ( 10,12,14);

-- like operator

select * from actor where first_name like 'S%';
 select * from actor where first_name like '%S';
 select * from actor where first_name like 'J%S';

 select * from actor where first_name like '%S%J';
 
  select * from actor where first_name like 'E_';
  
   select * from actor where first_name like '__';
   
    select * from actor where first_name like '___%';
    
    select * from actor
    where first_name ='ED' and actor_id=136;
    
    select * from actor
    where actor_id=3 or actor_id=5;








 