-- 1.Create a database named CompanyDB.
Create database CompanyDB30;

USE  CompanyDB30;


-- 2.Create a table Employees with the following columns:
-- Employees (EmpID (Integer, Primary Key), EmpName, Salary, JoinDate )

create table Employees (EmpID Integer Primary Key,
 EmpName varchar(10),
 Salary int, 
 JoinDate date);



-- 3.Create a table Departments with:
-- Departments (DeptID (Integer, Primary Key), DeptName)

 create table Departments (DeptID Integer Primary Key,
 DeptName varchar(50));
 

 -- 4.Add a column Email (VARCHAR(100)) to the Employees table.
 alter table  Employees add  column Email varchar(100);

 -- 5.Add a column dept_location to the Departments table.
 alter table Departments  add  column dept_location varchar(100);


 --6.Add a NOT NULL Constraint to the Phone column
 alter table Employees add column  Phone Numeric(10) not null;

 -- 7.Change the size of the EmpName column from VARCHAR (50) to VARCHAR (100).
 alter table Employees modify EmpName varchar(100);
 
 --8.	Create a foreign key constraint between two tables
 alter table Employees add DeptID integer;
 alter table Employees add foreign key Employees (DeptID) references Departments(DeptId);

  
  
-- 9. Drop the primary key Constraint from Departments;

ALTER TABLE Employees Drop PRIMARY KEY;

-- 10.Rename the column EmpName to EmployeeName.

ALTER TABLE Employees RENAME COLUMN EmpName to EmployeeName;

-- 11.Remove the Phone column from the Employees table.

ALTER TABLE Employees DROP COLUMN Phone;

-- 12.Rename the table Employees to EmployeeDetails.

RENAME TABLE Employees to EmployeeDetails30;

-- 13.Delete the Departments table permanently.

DROP TABLE Departments;

INSERT INTO Departments (DeptID, DeptName)
VALUES
(101, 'IT'),
(102, 'HR'),
(103, 'Finance'),
(104, 'Marketing'),
(105, 'Sales');


INSERT INTO EmployeeDetails30(EmpID, EmployeeName, Salary, JoinDate)
VALUES
(1, 'Rahul', 35000, '2022-01-15'),
(2, 'Amit', 42000, '2021-06-20'),
(3, 'Priya', 50000, '2023-03-10'),
(4, 'Sneha', 38000, '2022-09-05'),
(5, 'Rohan', 45000, '2020-11-25'),
(6, 'Neha', 55000, '2021-12-12'),
(7, 'Akash', 30000, '2023-07-18'),
(8, 'Pooja', 48000, '2022-04-22'),
(9, 'Kiran', 40000, '2020-08-14'),
(10, 'Vikas', 60000, '2019-02-28');
desc Employees;
select* from EmployeeDetails30;














