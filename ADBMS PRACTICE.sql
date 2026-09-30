Create database Institute;
show databases;
use Institute;

Create table Staff (staff_id int  , 
first_name varchar(10) ,
 last_name varchar(10), 
 DOB date,
 dept_id int);
 
 -- drop table Staff;
 
 Create table Department( dept_id int,
 dept_name varchar(10),
 dept_location varchar(15));
 
 Desc Staff;
 Desc Department;
 
 Alter table Staff add column location varchar(15);
 Alter table Staff add column joinning_year varchar(4);
alter table Staff add column age int, add column contact_num varchar(12); -- QUERRY 1
alter table Staff add (age int, contact_num varchar(12)); -- adother way to write same query ( QUERRY2 )

-- syntax alter table tablename modify columname datatype();
ALTER  table staff modify last_name text;

ALTER TABLE Staff drop contact_num;



