use sakila;
select * from payment;
select customer_id , sum(amount) from payment group by customer_id having sum(amount)>100;

 --  ek k  liye amount claculate ki
select sum(amount) from payment where amount>2 and customer_id=1; 

--  sabhi customer k liye amount totoal krni hai
select customer_id , sum(amount) from payment where amount>2 group by customer_id;

select customer_id ,count(amount) from payment where amount between 2 and 6 group by customer_id;


select * from actor;

-- if else condition k liye; 
select first_name, if (first_name='NICK', True,false)
from actor; 

 -- if else condition k liye 
select first_name, if(first_name='nick',true ,if(first_name='ED',"hey","HEllo")) from actor; 


--  case version condition

select first_name,
	case when first_name="nick" then 'true'
			when first_name = 'ED' then "hello"
		else 'false'
end as new	
 from actor;
 
 select * from payment;
 
 
 select payment_id,
 amount, 
 case when amount>6 then amount*1.50
 when amount>2 then  amount*1.15
 else amount*1.10 end as new_amount
 from payment;