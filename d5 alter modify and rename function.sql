-- Alter query
#add column
#modify column
#rename column


alter table table_name
add column_name data_type;


alter table table_name
modify column_name datatype;

alter table table_name
rename column old_name to new_name;

#Update
Update table_name set marks=70,pincode=302018 where namee='Abhishek';

#disable
set sql_safe_updates=0;
#enable
set sql_safe_updates=1;


#delete
delete from table_name where condition1 and/or condition2;




