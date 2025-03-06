show databases;
use 23BIT064;
show tables;

-- Q-1 Give details of customers ANIL. 
select * from customers left join borrow on customers.C_NAME = borrow.CNAME
left join deposit on customers.C_NAME = deposit.CNAME where customers.C_NAME = 'Anil';

SELECT * FROM borrow;
SELECT * FROM branch;
SELECT * FROM customers;
SELECT * FROM deposit;
SELECT * FROM Employee;

-- Q-2 Give city as their city name of customers having same living branch.
SELECT  C_NAME from customers join deposit, borrow;

-- Q-3 Write a query to display the last name, department 
--   number, and department name for all employees. 

SET SQL_SAFE_UPDATES = 0;

UPDATE Employee 
SET JOB_TITLE = 
    CASE 
        WHEN Dept_no = 10 THEN 'Manager'
        WHEN Dept_no = 20 THEN 'Sales Rep'
        WHEN Dept_no = 25 THEN 'Analyst'
        WHEN Dept_no = 15 THEN 'CEO'
        WHEN Dept_no = 30 THEN 'HR'
        ELSE 'Employee' 
    END;

SELECT Emp_Name, Dept_no, JOB_TITLE  FROM Employee;

-- Q-4 Create a unique listing of all jobs that are in department 30. 
select distinct JOB_TITLE from Employee where Dept_no = 30;


-- Q-5 Include the location of the department in the output 
ALTER TABLE Employee ADD COLUMN Dept_location VARCHAR(50);
UPDATE Employee 
SET Dept_location = 
    CASE 
        WHEN Dept_no = 10 THEN 'New York'
        WHEN Dept_no = 20 THEN 'Switzerland'
        WHEN Dept_no = 25 THEN 'Chicago'
        WHEN Dept_no = 15 THEN 'California'
        WHEN Dept_no = 30 THEN 'Australia'
        WHEN Dept_no = 35 THEN 'Delhi'
        WHEN Dept_no = 40 THEN 'New Jersey'
        ELSE 'Unknown'
    END;
SELECT Emp_Name, Dept_no, JOB_TITLE, Dept_location  FROM Employee;

-- Q - 6 Write a query to display the employee name, department number, and department name for all employees who work in NEW YORK. 
SELECT  distinct Emp_Name, Dept_no, JOB_TITLE FROM Employee WHERE Dept_location = 'New York';

select * from Employee;

ALTER TABLE Employee ADD COLUMN Manager_Name VARCHAR(50);
ALTER TABLE Employee ADD COLUMN Manager_No INT;

UPDATE Employee 
SET Manager_Name = 
    CASE 
        WHEN Emp_no = 101 THEN  'Bhargav'
        WHEN Emp_no = 102 THEN  'Darshan'
        WHEN Emp_no = 103 THEN   'Om'  
        WHEN Emp_no = 104 THEN  'Chirag'
        WHEN Emp_no = 105 THEN  'Utsav'
        WHEN Emp_no = 106 THEN  'Parv'
        WHEN Emp_no = 107 THEN  '😀no one'
        ELSE NULL  
    END,
    Manager_No = 
    CASE 
        WHEN Emp_no = 101 THEN 1
        WHEN Emp_no = 102 THEN 2
        WHEN Emp_no = 103 THEN 3 
        WHEN Emp_no = 104 THEN 4 
        WHEN Emp_no = 105 THEN 5 
        WHEN Emp_no = 106 THEN 6  
        WHEN Emp_no = 107 THEN 7 
        ELSE NULL  
    END;

SELECT Emp_Name, Emp_no, Manager_Name, Manager_No FROM Employee;

select * from Employee;

SELECT Emp_Name, hire_date FROM Employee 
WHERE hire_date > (SELECT Hire_date FROM Employee WHERE Emp_Name = 'Darshan');











