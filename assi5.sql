show databases;
use 23BIT064;
show tables;

select curdate() as Date;

SELECT Emp_no, Emp_name, ROUND(Emp_sal * 0.15) AS "New Salary" FROM Employee;

SELECT Emp_no, Emp_name, Emp_sal, FLOOR(Emp_sal * 1.15) As "New Salary",
FLOOR(Emp_sal * 1.15) - Emp_sal as "Increase" from Employee;


SELECT DISTINCT CONCAT(UPPER(SUBSTRING(Emp_name, 1, 1)), LOWER(SUBSTRING(Emp_name, 2))) AS "Formatted Name", 
LENGTH(Emp_name) AS "Name Length" FROM Employee WHERE Emp_name LIKE 'J%' OR Emp_name LIKE 'A%' OR 
Emp_name LIKE 'M%' ORDER BY "Form Name";  


select concat(Emp_name,"  ", 'earns',"  ",  Emp_sal,"  ", 'monthly') As "Emplyee stat" from Employee;

desc Employee;
ALTER TABLE Employee
ADD column hire_date DATE;
ALTER TABLE Employee
ADD column num_months INT;
ALTER TABLE Employee
ADD column day_week INT;

INSERT INTO Employee (hire_date, num_months, day_week) VALUES 
   ('2006-01-01', 6, 23),
   ('2008-02-12', 5, 50),
   ('2009-03-15', 8, 20),
   ('2010-06-18', 10, 11),
   ('2015-05-20', 12, 14),
   ('2018-06-23', 20, 24),
   ('2020-07-25', 24, 29);

desc Employee;
SET SQL_SAFE_UPDATES = 0;

UPDATE Employee SET 
    hire_date = CASE Emp_no
        WHEN 101 THEN '2006-01-01'
        WHEN 102 THEN '2008-02-12'
        WHEN 103 THEN '2009-03-15'
        WHEN 104 THEN '2010-06-18'
        WHEN 105 THEN '2015-05-20'
        WHEN 106 THEN '2018-06-23'
        WHEN 107 THEN '2020-07-25'
    END,
    num_months = CASE Emp_no
        WHEN 101 THEN 6
        WHEN 102 THEN 5
        WHEN 103 THEN 8
        WHEN 104 THEN 10
        WHEN 105 THEN 12
        WHEN 106 THEN 20
        WHEN 107 THEN 24
    END,
    day_week = CASE Emp_no
        WHEN 101 THEN 2
        WHEN 102 THEN 3
        WHEN 103 THEN 4
        WHEN 104 THEN 5
        WHEN 105 THEN 6
        WHEN 106 THEN 7
        WHEN 107 THEN 1
    END
WHERE Emp_no IN (101, 102, 103, 104, 105, 106, 107);

SELECT DISTINCT Emp_name, hire_date, num_months, DAYNAME(hire_date) AS "Day of the Week" FROM Employee
ORDER BY FIELD(DAYNAME(hire_date), 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday');

SELECT Emp_name,DATE_FORMAT(hire_date, '%7th of %6 %1994 12:00:00 AM') AS format_name
FROM Employee;

SELECT Emp_name, Emp_sal, COALESCE(Emp_comm, 0) AS commission, (Emp_sal + COALESCE(Emp_comm, 0)) AS 
an_com FROM Employee;

