show databases;
use 23BIT064;
show tables;

-- 1)Write a query to display the last name and hire date of any employee in the same department as SCOTT. Exclude SCOTT 
select Emp_name, hire_date from Employee where Dept_no in (select Dept_no from Employee where
Emp_name = 'Anita') and Emp_name <> 'Anita';

-- 2) Give name of customers who are depositors having same branch city of mr. sunil. 
select C_NAME from CUSTOMERS where CITY = (select City from CUSTOMERS where C_NAME = 'Kranti');

-- 3) Give deposit details and loan details of customer in same city where pramod is living. 
-- select d.ACT_NO, d.CNAME, d.AMOUNT, d.ADATE, B.AMOUNT as borrowed
-- from deposit d join borrow b on d.CNAME = b.CNAME join CUSTOMERS c on d.CNAME = c.C_NAME 
-- where c.C_ITY in (select CITY from CUSTOMERS where C_NAME = 'Pramod');

SELECT CITY FROM CUSTOMERS WHERE C_NAME = 'Pramod';

-- 4)Create a query to display the employee numbers and last names of all employees who earn more than the average salary. Sort the results in ascending order of salary. 
select DISTINCT Emp_no, Emp_name, Emp_sal from Employee where Emp_sal > (select avg(Emp_sal) from 
Employee) order by Emp_sal asc;

-- 5) Give names of depositors having same living city as mr. anil and having deposit amount greater than 2000 
select deposit.CNAME from deposit join CUSTOMERS on deposit.CNAME = CUSTOMERS.C_NAME 
where CUSTOMERS.CITY = (select CITY from CUSTOMERS where C_NAME = 'Naren') and deposit.amount > 1000;

-- 6)Display the last name and salary of every employee who reports to ford. 
SELECT Emp_name, Emp_sal FROM Employee WHERE Dept_no IN ( SELECT Dept_no FROM Employee 
WHERE Emp_name = 'Darshan');

-- 7) Display the department number, name, and job for every employee in the Accounting department. 

SELECT Dept_no, Emp_name, JOB_TITLE FROM Employee
WHERE Dept_no in (SELECT Dept_no FROM EMployee WHERE JOB_TITLE = 'Manager');

-- 8) List the name of emp having highest number of depositors or Salary. 
select Emp_name from Employee group by Emp_name Order by count(Emp_sal) desc limit 1;

-- 9) Give the name of cities where in which the maximum numbers of branches are located. 
select CUSTOMERS.CITY from CUSTOMERS join deposit on CUSTOMERS.C_NAME = deposit.CNAME
group by CUSTOMERS.CITY order by count(deposit.BNAME) desc limit 1;

-- 10)Give name of customers living in same city where maximum depositors are located. 
select CUSTOMERS.C_NAME from CUSTOMERS where CUSTOMERS.CITY = (select CUSTOMERs.CITY from
CUSTOMERS join deposit on CUSTOMERS.C_NAME = deposit.CNAME group by CUSTOMERS.CITY order by 
count(distinct deposit.CNAME) desc limit 1);
