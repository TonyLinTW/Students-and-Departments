DROP DATABASE IF EXISTS stu_dep;
CREATE DATABASE stu_dep;
USE stu_dep; #set a default data base

create table Students(STUDENT_ID integer, STUDENT_NAME VARCHAR(30), GENDER VARCHAR(6), DEPT_ID Integer);
create table Departments(DEPT_ID integer, DEPT_NAME VARCHAR(30));

insert into Students(STUDENT_ID, STUDENT_NAME, GENDER, DEPT_ID) values(001, "JHON", "MALE", 1001);
insert into Students(STUDENT_ID, STUDENT_NAME, GENDER, DEPT_ID) values(002, "PETER", "MALE", 1002);
insert into Students(STUDENT_ID, STUDENT_NAME, GENDER, DEPT_ID) values(003, "JULIA", "FEMALE", 1002);
insert into Students(STUDENT_ID, STUDENT_NAME, GENDER, DEPT_ID) values(004, "DAVID", "MALE", 1002);
insert into Students(STUDENT_ID, STUDENT_NAME, GENDER, DEPT_ID) values(005, "JAMES", "MALE", 1001);

insert into Departments(DEPT_ID, DEPT_NAME) values(1001, "MATH");
insert into Departments(DEPT_ID, DEPT_NAME) values(1002, "CS");
insert into Departments(DEPT_ID, DEPT_NAME) values(1003, "PHYSICS");

/*SELECT  DEPT_ID
FROM Departments;*/



SELECT d.DEPT_NAME, COUNT(s.DEPT_ID) as num
FROM Departments d  
left  join Students s
ON d.DEPT_ID = s.DEPT_ID
GROUP BY d.DEPT_NAME
ORDER BY  num DESC, d.DEPT_NAME;