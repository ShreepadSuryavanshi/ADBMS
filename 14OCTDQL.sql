create database user ;
show databases ;
use user ;

create table customer (custid int , custname varchar(50), City varchar(20), 
product varchar (20), price int );
desc customer;
alter table  customer add primary key (custid);
insert into  customer  values (1, 'om', 'Pune', 'Mobile', 15000),
(2, 'Ram', 'Mumbai', 'laptop', 65000), (3, 'Rohit', 'Nagpur', 'Tab', 18000);
select * from customer;
select custname , product from customer ;

create table CloneTable  as select * from customer; -- clone table 
select * from  CloneTable ;
select * from  customer ;
drop table CloneTable;

select custname , City from customer;
select custname, City from customer where custid =1;
 select custname,city, price from customer where price >=15000;
  select custname,city, price from customer where price <15000;
  
  select * from customer where price <=15000;
  select * from customer where custid =1;
  select * from  customer where city = "Nagpur";
  
  /* sorting  data using order  by single  column */
  select * from customer  order by price ;
  select * from customer order by price desc;
  select * from customer order by Custid;
  select * from customer  order by city asc; 
  
  /* Sorting data by  multiple columns*/
  select * from customer order by city ,price;
  select * from customer order by price, city;
  select * from customer order by city desc, price asc;
  
  /*Single - row function */
  /* case conversion function */
  select upper(custname), lower(product) from customer;
  select upper(custname), lower(product) from customer where custid<3;
  
  alter table customer add column LastName varchar(20);
  desc customer ;
  select * from customer ; 
  
  /* concat two cols  */
  select concat(custname , LastName) from customer ;
   select concat(custname ,'    ', LastName) from customer ;
   select concat(custname , LastName)as Fullname from customer;-- alias name 
      select concat(custname , LastName)as concat_name from customer;-- concat  column name change 
      
      
      /* use of SUBSTR and INSTR Functions*/
Select * from customer;
Select substr(custname,1,0) from customer; -- empty
Select substr(custname,1,1) from customer;
Select substr(custname,0,1) from customer; -- empty
Select substr(custname,1,2) from customer;
Select substr(custname,1,3) from customer;
Select substr(custname,2,1) from customer;
   
   
  
  