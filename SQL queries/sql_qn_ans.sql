create database db53; 
use db53;
create TABLE EmployeeDetails(
EmpId VARCHAR(10),
FullName VARCHAR(25),
ManagerId VARCHAR(25),
DateOfJoining INT(10),
City Varchar(25),
primary key(EmpId)
);
INSERT INTO EmployeeDetails
VALUES(121,'John Snow',321,01/31/2019,'Toronto'),
(321,'Walter White',986,01/30/2020,'California'),
(421,'Kuldeep Rana',876,27/11/2021,'New Delhi');
create TABLE EmployeeSalary(
EmpId VARCHAR(10),
Project VARCHAR(25),
Salary VARCHAR(25),
Variable INT(10),
primary key(EmpId)
);
INSERT INTO EmployeeSalary
VALUES(121,'P1',8000,500),
(321,'P2',10000,1000),
(421,'P1',12000,0);
/*Ques.1. Write an SQL query to fetch the EmpId and FullName of all the
employees working under the Manager with id – ‘986’?*/
SELECT  EmpId, FullName
FROM EmployeeDetails
WHERE ManagerId = 986;
/*Ques.2. Write an SQL query to fetch the different projects available from the
EmployeeSalary table?*/
SELECT DISTINCT(Project)
FROM EmployeeSalary;
/*Ques.3. Write an SQL query to fetch the count of employees working in project 'P1'?*/
SELECT COUNT(*) 
FROM EmployeeSalary 
WHERE Project = 'P1';
/*Ques.4. Write an SQL query to find the maximum, minimum, and average salary
of the employees?*/
SELECT Max(Salary), 
Min(Salary), 
AVG(Salary) 
FROM EmployeeSalary;
/*Ques.5. Write an SQL query to find the employee id whose salary lies in the range
of 9000 and 15000? */
SELECT EmpId, Salary
FROM EmployeeSalary
WHERE Salary BETWEEN 9000 AND 15000;
/*Ques.6. Write an SQL query to fetch those employees who live in Toronto and
work under the manager with ManagerId – 321*/
SELECT EmpId, City, ManagerId
FROM EmployeeDetails
WHERE City='Toronto' AND ManagerId='321';
/*Ques.7. Write an SQL query to fetch all those employees who work on Projects
other than P1? */
SELECT EmpId
FROM EmployeeSalary
WHERE NOT Project='P1';
/*Ques.8. Write an SQL query to fetch the EmpIds that are present in both the tables – ‘EmployeeDetails’ and ‘EmployeeSalary?*/
SELECT EmpId FROM 
EmployeeDetails 
where EmpId IN 
(SELECT EmpId FROM EmployeeSalary);
/*Ques.9. Write an SQL query to fetch employee names having a salary greater than
or equal to 5000 and less than or equal to 10000?*/
SELECT FullName 
FROM EmployeeDetails 
WHERE EmpId IN 
(SELECT EmpId FROM EmployeeSalary 
WHERE Salary BETWEEN 5000 AND 10000);
/*Ques.10. Write an SQL query to add a new column named Mobile no: to the
employee details table. Fill the column with values?*/
ALTER TABLE EmployeeDetails
ADD Mobile_no int(20);
select * from EmployeeDetails;
select * from EmployeeSalary;
/*Ques.11. All employees are getting salary hike of 5000. So change the salary of
each employee?*/
UPDATE  EmployeeSalary es2 SET  es2.Salary=es2.Salary+5000;
/*Ques.12. Change the column name Full Name to employee name from the
employee details*/
ALTER TABLE EmployeeDetails RENAME COLUMN FullName TO employee_name;
