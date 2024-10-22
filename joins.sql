use sakila; 
select * from actor;
desc actor;    -- actor_id (primary key)

SELECT * from film_actor;

select actor.actor_id , actor.first_name ,film_actor.film_id from actor join film_actor where actor.actor_id = film_actor.actor_id;

select * from film_actor;
desc film_actor;
select * from film;
desc film;


select film_actor.actor_id ,film_actor.film_id ,film.title from film_actor join film where film_actor.film_id = film.film_id;

create table p1(pid int, pname varchar(20));
insert into p1 values(10,'tv'),(11,'mobile'),(12,'laptop');
select * from p1;


create table o1(oid int, price int, product_id int);

insert into o1 values(101,55,10),(102,66,11),(103,77,15),(104,88,16);

select * from o1;

select p1.pid, p1.pname ,o1.oid, o1.price from p1 join o1 where p1.pid = o1.product_id;

--  likne ka second method  --->> 
select p1.pid, p1.pname ,o1.oid, o1.price from p1  inner join o1 on p1.pid = o1.product_id; 

-- cross join 
select p1.pid, p1.pname,o1.oid,o1.price from p1 join o1;

-- left join 
select p1.pid, p1.pname ,o1.Product_id,o1.oid, o1.price from p1  left join o1 on p1.pid = o1.product_id; 

-- right join 
select p1.pid, p1.pname ,o1.Product_id,o1.oid, o1.price from p1  right join o1 on p1.pid = o1.product_id; 