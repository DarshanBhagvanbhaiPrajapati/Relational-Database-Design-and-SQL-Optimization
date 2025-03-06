SHOW DATABASES;
DROP DATABASE IF EXISTS `23BIT064`;
CREATE DATABASE `23BIT064`;
USE `23BIT064`;

CREATE TABLE Job (
    Job_id VARCHAR(15),
    Job_title VARCHAR(30),
    Min_sal DECIMAL(7,2),
    Max_sal DECIMAL(7,2)
);
DESC Job;

INSERT INTO Job (Job_id, Job_title, Min_sal, Max_sal) VALUES
    ('IT_PROG', 'PROGRAMMER', 4000, 10000),
    ('MK_MGR', 'MARKETING MANAGER', 9000, 15000),
    ('FI_MGR', 'FINANCE MANAGER', 8200, 12000),
    ('FI_ACC', 'ACCOUNT', 4200, 9000),
    ('LEC', 'LECTURER', 6000, 17000),
    ('COMP_OP', 'COMPUTER OPERATOR', 1500, 3000);
SELECT * FROM Job;

CREATE TABLE Employee (
    Emp_no INT(3),
    Emp_name VARCHAR(12),
    Emp_sal DECIMAL(8,2),
    Emp_comm DECIMAL(10,0),
    Dept_no INT(5)
);
DESC Employee;

INSERT INTO Employee (Emp_no, Emp_name, Emp_sal, Emp_comm, Dept_no) VALUES
    (101, 'SMITH', 800, NULL, 20),
    (102, 'SNEHAL', 1600, 300, 25),
    (103, 'ADAMA', 1100, 0, 20),
    (104, 'AMAN', 3000, NULL, 15),
    (105, 'ANITA', 5000, 50000, 10),
    (106, 'SNEHA', 2450, 24500, 10),
    (107, 'ANAMIKA', 2975, NULL, 30);
    
SELECT * FROM Employee;


CREATE TABLE Deposit (
    acc_no INT(3),
    city_name VARCHAR(20),  
    branch_name VARCHAR(20), 
    amount DECIMAL(10, 2),  
    a_date DATE
);

INSERT INTO Deposit (acc_no, city_name, branch_name, amount, a_date) VALUES
    (201, 'Anil', 'VRCE', 6500.00, '2006-01-01'),
    (202, 'Mehul', 'Ajni', 9800.00, '2006-07-15'),
    (203, 'Sunil', 'Dharam', 5440.00, '2006-03-12'),  
    (204, 'Madhuri', 'Andheri', 8980.00, '2006-09-17'),
    (205, 'Pramod', 'Vihar', 9950.00, '2006-11-19'),
    (206, 'Kranti', 'Nehru place', 8950.00, '2006-11-21');

SELECT * FROM Deposit;

CREATE TABLE Borrow (
    loan_no INT(3),
    city_name VARCHAR(12),
    branch_name VARCHAR(8),
    amount DECIMAL(10,0)
);
DESC Borrow;

-- SELECT * FROM Job WHERE Min_sal > 4000;
-- SELECT EMP_NAME, EMP_SAL FROM Employee WHERE DEPT_NO = 20;
-- SELECT EMP_NO, EMP_NAME, DEPT_NO FROM Employee WHERE DEPT_NO IN (10, 20);

-- SELECT * FROM Employee WHERE EMP_NO IS NOT NULL AND EMP_NAME IS NOT NULL AND DEPT_NO IS NOT NULL AND Emp_sal IS NOT NULL; 
-- -- SELECT CONCAT(city_name, ' (', acc_no, ')') AS customer_info FROM Deposit WHERE amount <> 8000;
-- SELECT * FROM Job WHERE Min_sal IN (2000, 4000);

-- -- part-2
-- SELECT * FROM Employee WHERE EMP_NAME LIKE 'A_a%';

-- SELECT EMP_NAME, EMP_NO, Emp_sal FROM Employee WHERE EMP_NAME LIKE 'Ani__';

-- SELECT * FROM Employee WHERE EMP_NAME LIKE '_M%' OR EMP_NAME LIKE '_N%';

-- SELECT * FROM Job WHERE Job_id LIKE 'FI_%';


-- SELECT Job_title FROM Job WHERE Job_id LIKE '%_MGR' AND Max_sal > 12000;

-- SELECT * FROM Employee WHERE EMP_NAME LIKE '_n___' AND EMP_NAME IS NOT NULL;

-- SELECT * FROM Employee WHERE EMP_NAME LIKE '__a%' AND EMP_NAME IS NULL;

-- SELECT * FROM Employee WHERE EMP_NAME LIKE '%\_%' ESCAPE '\';