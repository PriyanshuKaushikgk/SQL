-- date and time function
use sakila; 

-- pseudo code-------->>> in-built column
-- current_timestamp ---->> exists both date and time
select current_timestamp(),now()  from dual; 

-- current_time---->> contain only time 
select current_time(),now() from dual;
select now(), adddate(now(),-2) from dual;

-- day/month /year m differrence k liye 
select now(), adddate(now(), interval 2 day) from dual;
select datediff(adddate(now(), interval 4 month),now())  from dual;

-- date_format 
select date_format( now(), "%Y") from dual;

-- extract --->>> extract krke dega data ko 
select extract(month from now()) from dual;
select extract(year from now()) from dual;


-- numberical


select from_unixtime(1447430882); 
select from_unixtime(1447430942);


show tables;
select * from inventory where year(last_update)=2006; 

-- order by
-- group by

select * from actor order by first_name;
select * from actor order by first_name,actor_id desc;


--  aggregate fucntion (multi-row function)
select * from payment;
select count(payment_id) from payment;
select count(amount), sum(amount), avg(amount), min(amount),max(amount) from payment;

select * from payment;
select count(*) , sum(amount) from payment where customer_id=1;  

select count(customer_id) , sum(amount) from payment where customer_id=2;  

-- bar bar repeat na krne k liye group by funciton use krte hai or group by particular ussi fucntion pr lagega jis pr humk chahiye(like that customer_id )
select customer_id, count(*),sum(amount) from payment group by customer_id;

select * from payment;
select * from payment;
select staff_id ,count(*), sum(amount) , max(amount) from payment group by staff_id;
select staff_id,count(*),sum(amount),max(amount) from payment group by staff_id;

select customer_id, count(*) as totalcount, sum(amount) "total"  from payment group by customer_id order by total;


select * from address;

select district, count(district), min(city_id),max(city_id) from address group by district order by district desc
 ;

select * from rental;
select staff_id , count(*), sum(rental_id) from rental group by staff_id  desc;
SELECT staff_id, COUNT(*), SUM(rental_id) FROM rental GROUP BY staff_id ORDER BY staff_id DESC;

select max(rental_date ) from rental where customer_id = 594;