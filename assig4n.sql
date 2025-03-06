SHOW DATABASES;
USE 23BIT064;
SHOW TABLES;
SELECT * FROM Deposit limit 0,1000;

select sum(amount) as Total_deposite from Deposit;
select sum(amount) from Borrow where BNAME = 'Vihar' limit 0,1000;
# Query 3
select max(amount) from Borrow where BNAME= "VRCE";

#Query 4
select count(*) as c_name from CUSTOMERS; 

#query 5
select count(*) as CITY from CUSTOMERS;

#Query 6
CREATE TABLE Supplier select * from Employee;
desc Supplier;

#Query 7
create table sup1 select Emp_no, Emp_name from Employee;
select * from sup1;

#Query 8
create table sup2 select * from Employee where Emp_no ="100";
select * from sup2;

#Query 9
insert into sup2 select * from Employee where Emp_name like '_n___';
select * from sup2;

#Query 10
delete from sup1 limit 7;
select * from sup1;

#Query 11
delete from Supplier where Emp_no = '103' limit 1;
select * from supplier;

#Query 12
alter table sup2 rename sup5;

#Query 13
drop table sup1;
desc sup1;

#Query 14
update Employee set Dept_no = '10' where Emp_name like '_m%' limit 2;
select * from Employee;

#Query 15
update Employee set Emp_name = 'Darshan' where Emp_no='103' limit 1;
select * from Employee;

#Query 16
alter table Employee add phone decimal(10);
desc Employee;

#Query 17
alter table Employee change Emp_name Emp_name varchar(30);

SELECT COUNT(*) AS Total_rows, COUNT(DISTINCT Dept_no) AS DisDepno FROM Employee WHERE Emp_sal > 1000;

#Query 19
SELECT DISTINCT * FROM Employee ORDER BY Emp_no ASC, Emp_name DESC;

#Query 20
SELECT DISTINCT * FROM Employee ORDER BY dept_no ASC, emp_comm DESC;

#Query 21
SET SQL_SAFE_UPDATES = 0;
UPDATE Employee SET Emp_comm = 500 WHERE dept_no = 20;
SET SQL_SAFE_UPDATES = 1;

#Query 22
SELECT DISTINCT * FROM Employee ORDER BY Emp_comm ASC, Emp_sal DESC;

#Query 23
SELECT Distinct * FROM Employee ORDER BY emp_comm ASC, emp_no DESC;
