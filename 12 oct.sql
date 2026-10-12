-- TCL command
-- 12/10/26
drop database TCL;
create database TCL;
use  TCL;

create table orders( order_id int primary key , 
customer_name varchar(100),
status varchar(50));

desc orders;

-- start the transaction --
set autocommit=0; /* in my sql ;*/

-- to start --;
begin;
insert into orders value (101,'geet', 'pending');
insert into orders value (102,'bob', 'pending');

truncate table orders;

select * from orders;

rollback;
commit;


-- for commit 
insert into orders value (101,'Alice', 'pending');
insert into orders value (102,'bob', 'pending');

select * from orders;
commit;
update  orders set customer_name ='Raj' where order_id =102;

-- inserting few roads 
insert into orders value (103,'Om', 'pending');
insert into orders value (104,'Ram', 'pending');

savepoint sp1;
select * from orders;

-- step 2 update one order 
update orders set status = 'shipped' where order_id = 103;
savepoint sp2;
rollback to savepoint   sp1 ;

-- step 3 selete another order 
delete from orders where order_id=102;
savepoint sp3;


-- we want to  undo the delete  but keep the update
rollback to savepoint sp1;
rollback;
commit;







 