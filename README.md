# Students-and-Departments
A university uses 2 data tables, Students and Departments, to store data about its students and the departments associated with each major. Write a query to print the respective department name and number of students majoring in each department for all departments in the Departments table (even ones with no current students). Sort your results by descending number of students; if two or more departments have same number of students, then sort those departments alphabetically by department name.

Input Format
The Students and Departments tables are described as follows:
 
Students
Column Name	Type
STUDENT_ID	Integer
STUDENT_NAME	String
GENDER	Character
DEPT_ID	Integer

where STUDENT_ID is the student's ID number, STUDENT_NAME is the student's name, GENDER is their gender, and DEPT_ID is the department ID associated with their declared major.

Departments
Column Name	Type
DEPT_ID	Integer
DEPT_NAME	String

where DEPT_ID is the department's ID number and DEPT_NAME is the department name.
