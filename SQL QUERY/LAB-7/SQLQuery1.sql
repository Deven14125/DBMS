CREATE TABLE EMP (EID INT,ENAME VARCHAR(20),DEPARTMENT VARCHAR(20),SALARY DECIMAL(8,2),JOININGDATE DATETIME,CITY VARCHAR(20))

INSERT INTO EMP (EID,ENAME,DEPARTMENT,SALARY,JOININGDATE,CITY) VALUES 
(101,'RAHUL','ADMIN',56000,'01-JAN-1990','RAJKOT'),
(102,'HARDIK','IT',18000,'25-SEP-1990','AHMEDABAD'),
(103,'BHAVIN','HR',25000,'14-MAY-1991','BARODA'),
(104,'BHOOMI','ADMIN',39000,'08-FEB-1991','RAJKOT'),
(105,'ROHIT','IT',17000,'23-Jul-90','Jamnagar'),
(106,'Priya','IT',9000,'18-Oct-90','Ahmedabad'),
(107,'BHOOMI','HR',34000,'25-Dec-91','Rajkot')

SELECT *FROM EMP

--PART - A:

--1. Display the Highest, Lowest, Label the columns Maximum, Minimum respectively.
SELECT MAX(SALARY) AS MAXIMUM, MIN(SALARY) AS MINIMUM FROM EMP

--2. Display Total, and Average salary of all employees. Label the columns Total_Sal and Average_Sal,
--respectively.
SELECT SUM(SALARY) AS TOTAL_SAL,AVG(SALARY) AS AVERAGE_SAL FROM EMP 

--3. Find total number of employees of EMPLOYEE table.
SELECT COUNT(ENAME) AS TOTAL_EMPLOYEE FROM EMP

--4. Find highest salary from Rajkot city.
SELECT MAX(SALARY) FROM EMP WHERE CITY='RAJKOT'

--5. Give maximum salary from IT department.
SELECT MAX(SALARY) FROM EMP WHERE DEPARTMENT = 'IT'

--6. Count employee whose joining date is after 8-feb-91.
SELECT COUNT(EID) AS TOTAL_EMP FROM EMP WHERE JOININGDATE > '08-FEB-91'

--7. Display average salary of Admin department.
SELECT AVG(SALARY) FROM EMP WHERE DEPARTMENT = 'ADMIN'

--8. Display total salary of HR department.
SELECT SUM(SALARY) FROM EMP WHERE DEPARTMENT = 'HR'

--9. Count total number of cities of employee without duplication.
SELECT CITY , COUNT(DISTINCT CITY) FROM EMP  GROUP BY CITY

--10. Count unique departments.
SELECT COUNT(DISTINCT DEPARTMENT) FROM EMP

--11. Give minimum salary of employee who belongs to Ahmedabad.
SELECT MIN(SALARY) FROM EMP WHERE CITY = 'AHMEDABAD'

--12. Find city wise highest salary.
SELECT CITY , MAX(SALARY) AS HIGHEST_SALARY FROM EMP GROUP BY CITY

--13. Find department wise lowest salary.
SELECT DEPARTMENT , MIN(SALARY) AS LOWEST_SALARY FROM EMP GROUP BY CITY

--14. Display city with the total number of employees belonging to each city.
SELECT CITY,COUNT(DISTINCT EID) FROM EMP GROUP BY CITY

--15. Give total salary of each department of EMP table.
SELECT DEPARTMENT,SUM(DISTINCT SALARY) AS TOTAL_SALARY FROM EMP GROUP BY DEPARTMENT

--16. Give average salary of each department of EMP table without displaying the respective department
--name.
SELECT  AVG(SALARY) FROM EMP GROUP BY DEPARTMENT

--Part � B:

--1. Count the number of employees living in Rajkot.
SELECT COUNT(EID) FROM EMP WHERE CITY = 'RAJKOT'

--2. Display the difference between the highest and lowest salaries. Label the column DIFFERENCE.
SELECT MAX(SALARY) - MIN(SALARY) AS DIFFERENCE FROM EMP 

--3. Display the total number of employees hired before 1st January, 1991.
SELECT COUNT(EID) AS TOTAL_EMP FROM EMP WHERE JOININGDATE < '1-JAN-1991'

--Part � C:


--1. Count the number of employees living in Rajkot or Baroda.
SELECT CITY,COUNT(EID) AS TOTAL_EMP FROM EMP WHERE CITY IN ('RAJKOT','BARODA') GROUP BY CITY

--2. Display the total number of employees hired before 1st January, 1991 in IT department.
SELECT COUNT(EID) AS TOTAL_EMP FROM EMP WHERE JOININGDATE < '1-JAN-1991' AND DEPARTMENT = 'IT'

--3. Find the Joining Date wise Total Salaries.
SELECT JOININGDATE,SUM(SALARY) AS TOTAL_SAL FROM EMP GROUP BY JOININGDATE

--4. Find the Maximum salary department & city wise in which city name starts with �R�.
SELECT DEPARTMENT,CITY ,MAX(SALARY) AS MAX_SAL FROM EMP WHERE CITY LIKE 'R%' GROUP BY DEPARTMENT,CITY

--EXTRA

--1. FIND THE EMPLOYEE WITH HIGHEST SALARY IN EACH DEPARTMENT
SELECT ENAME,DEPARTMENT,MAX(SALARY) AS MAX_SALARY FROM EMP GROUP BY ENAME,DEPARTMENT

--2. CALCULATE AVERAGE SALARY FOR EACH CITY
SELECT CITY,AVG(SALARY) FROM EMP GROUP BY CITY

--3. FIND SECOND HIGHEST SALARY IN THE ENTIRE DEPARTMENT
SELECT DEPARTMENT,MAX(SALARY) FROM EMP WHERE SALARY < (SELECT MAX(SALARY) FROM EMP) GROUP BY DEPARTMENT
