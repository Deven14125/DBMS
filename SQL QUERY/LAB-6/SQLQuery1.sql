--LAB-6

--Math functions

--Part – A:

--1. Display the result of 5 multiply by 30.


--2. Find out the absolute value of -25, 25, -50 and 50.
SELECT ABS(-25) , ABS(25) , ABS(-50) , ABS(50)

--3. Find smallest integer value that is greater than or equal to 25.2, 25.7 and -25.2.
SELECT CEILING(25.2),CEILING(25.7),CEILING(-25.2)

--4. Find largest integer value that is smaller than or equal to 25.2, 25.7 and -25.2.
SELECT FLOOR(25.2),FLOOR(25.7),FLOOR(-25.2)

--5. Find out remainder of 5 divided 2 and 5 divided by 3.


--6. Find out value of 3 raised to 2nd power and 4 raised 3rd power.
SELECT POWER(3,2),POWER(4,3)

--7. Find out the square root of 25, 30 and 50.
SELECT SQRT(25),SQRT(25),SQRT(50)

----8. Find out the square of 5, 15, and 25
SELECT SQUARE(5),SQUARE(15),SQUARE(25)

--9. Find out the value of PI.
SELECT PI()

--10. Find out round value of 157.732 for 2, 0 and -2 decimal points.
SELECT ROUND(157.732,2),ROUND(157.732,0),ROUND(157.732,-2)

--11. Find out exponential value of 2 and 3.
SELECT EXP(2),EXP(3)

--12. Find out logarithm having base e of 10 and 2.
SELECT LOG(10),LOG(2)

--13. Find out logarithm having base b having value 10 of 5 and 100.


--14. Find sine, cosine and tangent of 3.1415.
SELECT SIN(3.1415),COS(3.1415),TAN(3.1415)

--15. Find sign of -25, 0 and 25.
SELECT SIGN(-25),SIGN(0).SIGN(25)

--16. Generate random number using function.
SELECT RAND()


--Part – B:

CREATE TABLE EMP_MASTER (EMPNO INT,EMPNAME VARCHAR(50),JOINING_DATE DATETIME,SALARY DECIMAL(8,2),COMMISSION DECIMAL(8,2),CITY VARCHAR(20),DEPTCODE VARCHAR(20))

INSERT INTO EMP_MASTER (EMPNO,EMPNAME,JOINING_DATE,SALARY,COMMISSION,CITY,DEPTCODE) VALUES
(101,'KEYUR',2002-01-05,12000,4500,'RAJKOT','3@G'),
(102,'HARDIK',2004-02-15,14000,2500,'AHMEDABAD','3@'),
(103,'KAJAL',2006-03-14,15000,3000,'BARODA','3-GD'),
(104,'BHOOMI',2005-06-23,12500,1000,'AHMEDABAD','1A3D'),
(105,'HARMIT',2004-02-15,14000,2000,'RAJKOT','312A')


--1. Display the result of Salary plus Commission.


--2. Find smallest integer value that is greater than or equal to 55.2, 35.7 and -55.2.
SELECT CEILING(55.2),CEILING(35.7).CEILING(-55.2)

--3. Find largest integer value that is smaller than or equal to 55.2, 35.7 and -55.2.
SELECT FLOOR(55.2),FLOOR(35.7),FLOOR(-55.2)

--4. Find out remainder of 55 divided 2 and 55 divided by 3.
--5. Find out value of 23 raised to 2nd power and 14 raised 3rd power.SELECT POWER(23,2) , POWER(14,3)	--Part – C:

--1. Find out the square root of 36, 49 and 81.
SELECT SQRT(360), SQRT(49), SQRT(81)

--2. Find out the square of 3, 9, and 12.
SELECT SQUARE(3),SQUARE(9),SQUARE(12)

--3. Find out round value of 280.8952 for 2, 0 and -2 decimal points.
SELECT ROUND(280.8952,2),ROUND(280.8952,0),ROUND(280.8952,-2)

--4. Find sine, cosine and tangent of 4.2014.
SELECT SIN(4.2014),COS(4.2014),TAN(4.2014)

--5. Find sign of -55, 0 and 95
SELECT SIGN(-55),SIGN(0),SIGN(95)


--String functions

--Part – A:

--1. Find the length of following. (I) NULL (II) ‘ hello ’ (III) Blank
SELECT LEN(NULL),LEN('HELLO'),LEN('')

--2. Display your name in lower & upper case.
SELECT LOWER('DEVEN'),UPPER('DEVEN')	

--3. Display first three characters of your name.


--4. Display 3rd to 10th character of your name.
SELECT SUBSTRING('DARSHAN UNIVERSITY',3,10)

--5. Write a query to convert ‘abc123efg’ to ‘abcXYZefg’ & ‘abcabcabc’ to ‘ab5ab5ab5’ using REPLACE.
SELECT REPLACE('ABC123EFG','123','ABCXYZEFG'),REPLACE('ABCABCABC','ABC','AB5AB5AB5')

--6. Write a query to display ASCII code for ‘a’,’A’,’z’,’Z’, 0, 9.
SELECT ASCII('a'),ASCII('A'),ASCII('z'),ASCII('Z'),ASCII(0),ASCII(9)

--7. Write a query to display character based on number 97, 65,122,90,48,57.


--8. Write a query to remove spaces from left of a given string ‘hello world              ‘.
SELECT LTRIM('HELLO WORLD              ')

--9. Write a query to remove spaces from right of a given string ‘         hello world           ‘.
SELECT RTRIM('         hello world          ')

--10. Write a query to display first 4 & Last 5 characters of ‘SQL Server’.


--11. Write a query to convert a string ‘1234.56’ to number (Use cast and convert function).
SELECT CAST(1234.56 AS numeric)
SELECT CONVERT(numeric,1234.56)

--12. Write a query to convert a float 10.58 to integer (Use cast and convert function).
SELECT CAST(10.58 AS INT)
SELECT CONVERT(INT,10.58)	

--13. Put 10 space before your name using function.
SELECT SPACE(10) + 'DEVEN MACHCHHAR'

--14. Combine two strings using + sign as well as CONCAT ().
SELECT CONCAT('DEVEN','MACHCHHAR')
SELECT 'DEVEN' + 'MACHCHHAR'

--15. Find reverse of “Darshan”.
SELECT REVERSE('DARSHAN')

--16. Repeat your name 3 times.
SELECT REPLICATE('DEVEN',3)


--Part – B: 

--1. Find the length of FirstName and LastName columns.
SELECT LEN('FIRSTNAME'),LEN('LASTNAME') FROM STUDENT

--2. Display FirstName and LastName columns in lower & upper case.


--3. Display first three characters of FirstName column.


--4. Display 3rd to 10th character of Website column.


--5. Write a query to display first 4 & Last 5 characters of Website column.


--Part – C: Perform following queries on Student table of practical no 5.


--1. Put 10 space before FirstName using function.
SELECT SPACE(10) + 'FIRSTNAME'

--2. Combine FirstName and LastName columns using + sign as well as CONCAT ().
SELECT CONCAT('FIRSTNAME','LASTNAME') FROM STUDENT

--3. Combine all columns using + sign as well as CONCAT ().


--4. Find reverse of FirstName column.
SELECT REVERSE('FIRSTNAME') FROM STUDENT

--5. Repeat FirstName column 3 times


--6. Give the Names which contains 5 characters.


--7. Combine the result as <FirstName> Lives in <City>.


--8. Combine the result as Student_ID of < FirstName > is <StuID> 
