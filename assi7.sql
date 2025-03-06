show databases;
use 23BIT064;
show tables;

-- -Q-1
select * from deposit;
select extract(year from Adate),count(*) from deposit
group by extract(year from Adate);


-- Q-2)  select * from CUSTOMERS where CITY='Nagpur';
select COUNT(*) as tot_cust from CUSTOMERS 
where CITY = 'Nagpur';

-- Q-3) List maximum deposit of customers living in POWAI. 
select max(AMOUNT) as max_depo from deposit
where BNAME = 'POWAI';

select * from Employee;

-- Q-4) Display the highest, lowest, sum, and average salary of all 
-- employees. Label the columns Maximum, Minimum, Sum, and Average, respectively. Round your results to the nearest whole number. 

select
    round(max(Emp_sal)) as Maximum,
    round(min(Emp_sal)) as Minimum,
    round(sum(Emp_sal)) as Sum,
    round(avg(Emp_sal)) as Average
from Employee;


-- Q-5 ) Write a query that displays the difference between the highest and lowest salaries. Label the column DIFFERENCE.
select max(Emp_sal) - min(Emp_sal) as DIFF FROM Employee;

select distinct * from Employee;

-- Q-6)
select 
	count(distinct Emp_no) as tot_emplo,
    sum(distinct case when year(hire_date) = 2006 then 1 else 0 end) AS hir_2006,
    sum(distinct case when year(hire_date) = 2015 then 1 else 0 end) AS hir_2015,
    sum(distinct case when year(hire_date) = 2020 then 1 else 0 end) AS hir_2020,
    sum(distinct case when year(hire_date) = 2025 then 1 else 0 end) AS hir_2025
from Employee;

-- Q-7)

select avg(Emp_sal) from Employee group by Dept_no; 

-- Q-8)
select Dept_no, JOB_TITLE, sum(Emp_sal) as Total_Salary
from Employee group by Dept_no, Job_title;

select * from Employee;

-- Q-10)
select Dept_no, avg(Emp_sal) as average_salary
from Employee where Emp_sal > 2000 group by Dept_no;

-- Q-10)
select JOB_TITLE, sum(Emp_sal) as total_salary from Employee
where JOB_TITLE != 'CEO' group by JOB_TITLE having sum(Emp_sal) > 3000
order by total_salary desc;

-- Q-11)
select * from deposit;
select BNAME from deposit where BNAME = 'CHANDI' group by BNAME
having sum(AMOUNT) > 5000;



