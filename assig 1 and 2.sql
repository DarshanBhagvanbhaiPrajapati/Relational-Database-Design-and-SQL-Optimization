SHOW DATABASES;
DROP DATABASE IF EXISTS `23BIT064`;
CREATE DATABASE `23BIT064`;
USE `23BIT064`;

CREATE TABLE deposit (
    ACT_NO VARCHAR(8),
    CNAME VARCHAR(18),
    BNAME VARCHAR(18),
    AMOUNT DECIMAL(8, 2),
    ADATE DATE
);

INSERT INTO deposit (ACT_NO, CNAME, BNAME, AMOUNT, ADATE) VALUES
    ('100', 'ANIL', 'VRCE', '1000.00', '1995-03-01'),
    ('101', 'SUNIL', 'AJNI', '5000.00', '1996-01-04'),
    ('102', 'MEHUL', 'KAROLBGH', '3500.00', '1995-11-17'),
    ('104', 'MADHURI', 'CHANDI', '1200.00', '1995-12-17'),
    ('105', 'PRAMOD', 'M.G.ROAD', '3000.00', '1996-03-27'),
    ('106', 'SANDIP', 'ANDHERI', '2000.00', '1996-03-31'),
    ('107', 'SHIVANI', 'VIRAR', '1000.00', '1995-09-05'),
    ('108', 'KRANTI', 'NEHRU PLACE', '5000.00', '1995-07-02'),
    ('109', 'MINU', 'POWAI', '7000.00', '1995-08-10');
DESC deposit;

CREATE TABLE BRANCH (
    BNAME VARCHAR(18),
    CITY VARCHAR(18)
);
INSERT INTO BRANCH(BNAME,CITY) VALUES
   ('Vrce','Nagpur'),
   ('Ajni','Nagpur'),
   ('Karolbagh','Delhi'),
   ('Chandi','Delhi'),
   ('Dharmpeth','Nagpur'),
   ('MG Road','Bangalore'),
   ('Andheri','Mumbai'),
   ('Virar','Mumbai'),
   ('Nehru Place','Delhi'),
   ('Powai','Mumbai');
DESC BRANCH;

CREATE TABLE CUSTOMERS (
    C_NAME VARCHAR(19),
    CITY VARCHAR(18)
);
INSERT INTO CUSTOMERS(C_NAME,CITY) VALUES 
       ('Anil','Calcutta'),
       ('Sunil','Delhi'),
       ('Mehul','Baroda'),
       ('Mandar','Patna'),
       ('Madhuri','Nagpur'),
       ('Pramod','Nagpur'),
       ('Sandip','Surat'),
       ('Shivani','Mumbai'),
       ('Kranti','Mumbai'),
       ('Naren','Mumbai');
DESC CUSTOMERS;

CREATE TABLE BORROW (
    LOANNO VARCHAR(5),
    CNAME VARCHAR(18),
     BNAME VARCHAR(18),
     AMOUNT DECIMAL(8,2)
);
INSERT INTO BORROW(LOANNO,CNAME,BNAME,AMOUNT) VALUES 
         ('201','Anil','VRCE','1000.00'),
          ('206','Mehul','Ajni','5000.00'),
           ('311','Sunil','Dharampeth','3000.00'),
            ('321','Madhuri','Andheri','2000.00'),
             ('375','Pramod','Vihar','8000.00'),
              ('481','Kranti','Nehru place','3000.00');
DESC BORROW;

# 1) Describe deposit,branch
DESCRIBE deposit;
DESCRIBE BRANCH;

# 2) Describe deposit;
DESCRIBE deposit;

# 3) Describe borrow, customers.
DESCRIBE BORROW;
DESCRIBE CUSTOMERS;

# 4)List all data from table DEPOSIT.
select * from deposit;

# 5)List all data from table BORROW. 
select * from BORROW;

# 6)List all data from table CUSTOMERS. 
select * from CUSTOMERS;

# 7)List all data from table BRANCH. 
select * from BRANCH;

# 8)Give account no and amount of depositors. 
SELECT ACT_NO, AMOUNT FROM deposit;

# 9)Give name of depositors having amount greater than 4000. 
SELECT CNAME FROM deposit WHERE AMOUNT > 4000;

# 10)Give name of customers who opened account after date 'give any date'.
SELECT CNAME FROM deposit WHERE 'DATE' > '1996-03-27';

# 11)Give name of city where branch karolbagh is located. 
SELECT CITY FROM BRANCH WHERE BNAME = 'Karolbagh';
# 12)Give account no and amount of customer having account opened between 
SELECT ACT_NO, AMOUNT FROM deposit WHERE ADATE BETWEEN '1996-01-04' AND '1996-03-31';

# 13)Give names of depositors having account at VRCE.
SELECT BNAME FROM deposit WHERE ACT_NO = 100;
