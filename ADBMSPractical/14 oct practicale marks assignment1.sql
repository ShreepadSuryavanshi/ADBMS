






create database  assignment1;
use assignment1;
create  table employees(emp_id int primary key ,emp_name varchar(30),City varchar(30), bdate date);
create  table investor (inv_no int primary key ,inv_name varchar(30), inv_date date, inv_amt int ,emp_id int);
desc employees;
desc investor;
 
insert into employees values (101,'shreepad Suryavanshi ','Pune', '2005-08-30');
insert into employees values (102,'swaraj Mate ','Pune', '2005-02-21');
insert into employees values (103,'Neel Vidar ','Pune', '2004-06-15');
insert into employees values (104,'ishan surdi ','Pune', '2005-05-21');
insert into employees values (105,'ram  suryavanshi','Pune', '2005-08-20');
 select * from employees;
 
 insert into investor (inv_no ,inv_name , inv_date , inv_amt )VALUES
 (1,'ABC ', '2005-08-30', 50000),
 (2,'XYZ', '2005-08-20', 60000),(3,'CDE', '2005-04-12', 70000),
 (4,'QWR', '2005-08-22', 80000),(5,'IOP ', '2005-08-13', 90000);
  select * from investor;
  
  
  alter table  employees  add column Age int, add column Salary int ;
  desc employees;
  
  alter table  employees add constraint check_age_salary check (Age<= 50 and Salary >=10000);
  desc employees;
   select * from employees;
  show create table employees;
   alter table investor  add column Age int;
   
select * from investor ;

alter table investor  modify inv_name text ;
desc investor;
 alter table  employees rename column eid to e_id;
 desc employees;
 
  update employees set city = "Nagpur" where  e_id = "104";
   alter table investor Drop column age;
   select * from investor;
    delete  from investor  where inv_no =2 ;
    
    
     alter table employees drop constraint chk_age_salary;
     
     alter table  investor add foreign key(emp_id) references employees(e_id);
     select inv_no inv_name , inv_date , inv_amt from investor; 
     rename table employees to employee;
     show create table employee;
     truncate table investor ;
     select * from investor ;
     
     drop table investor ; 
     drop table employee;




-- Name: Shreepad Suryavanshi                                                   
-- Roll no: 2601187  
Write the SQL query and paste a screenshot of the output below the question.  
1. Create a database and two tables in it.  
create database  assignment1; use 
assignment1;  
create  table employees(emp_id int primary key ,emp_name varchar(30),City varchar(30), 
bdate date);  
create  table investor (inv_no int primary key ,inv_name varchar(30), inv_date date, 
inv_amt int ,emp_id int); desc employees:  
desc investor:  



2. Insert at least 5 rows into the table.  insert into employees values (101,'shreepad 
Suryavanshi ','Pune', '2005-08-30'); insert into employees values (102,'swaraj Mate 
','Pune', '2005-02-21'); insert into employees values (103,'Neel Vidar ','Pune', '2004
06-15'); insert into employees values (104,'ishan surdi ','Pune', '2005-05-21'); insert 
into employees values (105,'ram  suryavanshi','Pune', '2005-08-20');  select * from 
employees;  
insert into investor (inv_no ,inv_name , inv_date , inv_amt )VALUES  
(1,'ABC ', '2005-08-30', 50000),  
(2,'XYZ', '2005-08-20', 60000),(3,'CDE', '2005-04-12', 70000),  
(4,'QWR', '2005-08-22', 80000),(5,'IOP ', '2005-08-13', 90000);  
3. Display all the information in the Employee table.   
 
4. Add columns ‘Age’ and ‘Salary’ to the Employee table; apply check constraints for 
(Age<=50 and Salary>=10000). 
alter table  employees  add column Age int, add column Salary int ; 
desc employees; 
alter table  employees add constraint check_age_salary check (Age<= 50 and 
Salary>=10000); 
show create table employees;  
5. Add a column ‘Age’ to the Investor table.  
alter table investor  add column Age int;  
 
6. Change the data type of inv_name from varchar to text in the Investor table alter table 
investor  modify inv_name text ; desc investor;  
7. Change the name of the column/field Emp_id to E_id.    
alter table  employees rename column eid to e_id;  
desc employees;  
8. Update the city of Emp_id-4 to the current city, Nagpur.   
update employees set city = "Nagpur" where  e_id = "104";  

9. Delete one record from the Investor table.   select * from investor;  
delete  from investor  where inv_no =2 ;  
10. Drop the column ‘Age’ from the Investor table.  
alter table investor Drop column age;    
select * from investor;  
11. Drop the CHECK constraint on the ‘Age’ column from the Employee table.  
alter table employees drop constraint check_age_salary; 
show create table employees ; 


12. Create foreign key constraints between the Employee and Investor tables    
table  investor add foreign key(emp_id) references employees(e_id);  
13. Display any 4 columns from the Investor table.  
select inv_no inv_name , inv_date , inv_amt from investor;  
14. Rename a table.   
rename table employees to employee;       
show create table employee;  
 alter 

15. Delete all the records using the TRUNCATE command.  
truncate table investor ;      
select * from investor ;  

16. Drop both tables from the database.  
Drop table investor   
Drop table employees;  
show tables from assignment1;