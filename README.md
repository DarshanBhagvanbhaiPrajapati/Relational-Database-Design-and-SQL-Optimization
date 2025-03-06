**SQL Database Queries and Schema Development**
This repository contains a comprehensive collection of SQL queries designed to explore various aspects of relational databases. The project covers a wide range of topics, including:
      Database Schema Creation: Designing tables for customers, branches, deposits, and employees.
      Data Manipulation: Inserting, updating, and deleting data using DML commands.
      Data Retrieval: Using DDL commands to create and manage database structures, and DML commands to manipulate data.
      Aggregate Functions: Applying group functions to aggregate data.
      Join Operations: Combining data from multiple tables.
       Single-Row Functions: Utilizing functions to manipulate individual rows.

   Project Structure
      Assignment 1 & 2: Focuses on creating and populating tables with data, and performing basic queries.
     Assignment 3: Explores more complex queries, including filtering and sorting data.
     Assignment 4: Covers data manipulation commands, aggregate functions, and sorting concepts.
     Assignment 5: Studies single-row functions for data manipulation.
     Assignment 6: Demonstrates joining multiple tables to retrieve combined data.
     Assignment 7: Applies aggregate functions to group and analyze data.

# ASSI 1, 2
To study DDL-create and DML-insert commands. 
  > Describe deposit, branch. 
  >Describe borrow, customers. 
  >List all data from table DEPOSIT. 
  >List all data from table BORROW. 
  >List all data from table CUSTOMERS. 
  >List all data from table BRANCH. 
  >Give account no and amount of depositors. 
  >Give name of depositors having amount greater than 4000.  
  >Give name of customers who opened account after date 'give any date'. 
  >Give name of city where branch karolbagh is located. 
  >Give account no and amount of customer having account opened between date 'give any date’ and 'give any date’. 
  >Give names of depositors having account at VRCE.

**#ASSI 3**
 >Retrieve all data from employee, jobs and deposit. 
  >Give details of account no. and deposited rupees of customers having account opened between dates 01-01-06 and 25-07-06. 
  >Display all jobs with minimum salary is greater than 4000. 
  >Display name and salary of employee whose department no is 20. Give alias name to name of employee. 
  >Display employee no, name and department details of those employee whose department lies in (10, 20). 
  >Display the non-null values of employees. 
  >Display name of customer along with its account no (both column should be displayed as one) whose amount is not equal to 8000 Rs. 
  >Display the content of job details with minimum salary either 2000 or 4000.
 >Display all employee whose name start with ‘A’ and third character is ‘a’. 
 >Display name, number and salary of those employees whose name is 5 characters long and first three characters are ‘Ani’. 
 >Display all information of employee whose second character of name is either ‘M’ or ‘N’ 
 >Find the list of all customer name whose branch is in ‘andheri’ or ‘dadar’ or ‘virar’. 
 >Display the job name whose first three character in job id  field is ‘FI_’. 
 >Display the title/name of job whose last three character are ‘_MGR’ and their maximum salary is greater than Rs 12000. 
 >Display the non-null values of employees and also employee name second character should be ‘n’ and string should be 5- character long. 
 >Display the null values of employee and also employee name’s third character should be ‘a’. 
 >What will be output if you are giving LIKE predicate as ‘%\_%’ ESCAPE ‘\’

**#ASSI -4 (To Perform various data manipulation commands, aggregate functions and sorting concept on all created tables.)  **
List total deposit from deposit. 
    >List total loan from karolbagh branch 
   >Give maximum loan from branch vrce.
  > Count total number of customer 
  >Count total number of customer’s cities. 
 >Create table supplier from employee with all the columns. 
 >Create table sup1 from employee with first two columns. 
 >Create table sup2 from employee with no data  
 >Insert the data into sup2 from employee whose second character should be ‘n’ and string should be 5 characters long in employee name field. 
 >Delete all the rows from sup1. 
 >Delete the detail of supplier whose sup_no is 103. 
 >Rename the table sup2. 
 >Destroy table sup1 with all the data.
 >Update the value dept_no to 10 where second character of  emp. name is ‘m’. 
>Update the value of employee name whose employee number is 103. 
 >Add one column phone to employee with size of column is 10. 
 >Modify the column emp_name to hold maximum of 30 characters. 
 >Count the total no as well as distinct rows in dept_no column with a condition of salary greater than 1000 of employee. 
 >Display the detail of all employees in ascending order, descending order of their name and no. 
 >Display the dept_no in ascending order and accordingly display emp_comm in descending order. 
 >Update the value of emp_comm to 500 where dept_no is 20. 
 >Display the emp_comm in ascending order with null value first and accordingly sort employee salary in descending order. 
 >Display the emp_comm in ascending order with null value last and accordingly sort emp_no in descending order.

**#ASSI-5 (To study Single-row functions. )**
 >Write a query to display the current date. Label the column Date 
 >For each employee, display the employee number, job, salary, and salary increased by 15% and expressed as a whole number. Label the column New Salary 
 >Modify your query no (2) to add a column that subtracts the old salary from the new salary. Label the column Increase 
 >Write a query that displays the employee’s names with the 
 >first letter capitalized and all other letters lowercase, and the length of the names, for all employees whose name starts with J, A, or M. Give each column an
   appropriate label. Sort the results by the employees’ last names. 
 >Write a query that produces the following for each employee:<employee last name> earns <salary> monthly 
 >Display the name, hire date, number of months employed and day of the week on which the employee has started. Order the results by the day of the week starting with Monday. 
 >Display the hiredate of emp in a format that appears as Seventh of June 1994 12:00:00 AM. 
 >Write a query to calculate the annual compensation of all employees (sal +comm.)

**#ASSI-6 (Displaying data from Multiple Tables (join)  )**
  >Give details of customers ANIL. 
  >Give city as their city name of customers having same living branch.  
  >Write a query to display the last name, department number, and department name for all employees. 
 >Create a unique listing of all jobs that are in department 30. 
 >Include the location of the department in the output 
 >Write a query to display the employee name, department number, and department name for all employees who work in NEW YORK. 
 >Display the employee last name and employee number along with their manager’s last name and manager number. Label the columns Employee, Emp#, Manager, and Mgr#, respectively. 
 >Create a query to display the name and hire date of any employee hired after employee SCOTT.

 # ASSI-7 (To apply the concept of Aggregating Data using Group functions.)  
 > List total deposit of customer having account date after 1- jan-96. 
 >List total deposit of customers living in city Nagpur. 
 >List maximum deposit of customers living in bombay. 
 >Display the highest, lowest, sum, and average salary of all employees. Label the columns Maximum, Minimum, Sum, and Average, respectively. Round your results to the nearest whole number. 
 >Write a query that displays the difference between the highest and lowest salaries. Label the column DIFFERENCE. 
 >Create a query that will display the total number of employees and, of that total, the number of employees hired in 1995, 1996, 1997, and 1998 
 >Find the average salaries for each department without displaying the respective department numbers. 
 >Write a query to di splay the total salary being paid to each job title, within each department. 
 >Find the average salaries > 2000 for each department without displaying the respective department numbers. 
 >Display the job and total salary for each job with a total salary amount exceeding 3000, in which excludes president and sorts the list by the total salary. 
 >List the branches having sum of deposit more than 5000 and located in city Mumbai. 
