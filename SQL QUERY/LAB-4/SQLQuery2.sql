--PART - A:

--1. Add two more columns City VARCHAR (20) and Pincode INT.
ALTER TABLE DEPOSIT ADD CITY VARCHAR(50),PINCODE INT

--2. Change the size of CNAME column from VARCHAR (50) to VARCHAR (35).
ALTER TABLE DEPOSIT ALTER COLUMN CNAME VARCHAR(50)

--3. Change the data type DECIMAL to INT in amount Column.
ALTER TABLE DEPOSIT ALTER COLUMN AMOUNT INT

--4. Rename Column ActNo to ANO.
EXEC SP_RENAME 'DEPOSIT.ACTNO','ANO'


--5. Delete Column City from the DEPOSIT table.
DELETE  FROM DEPOSIT 

--6. Change name of table DEPOSIT to DEPOSIT_DETAIL.
EXEC SP_RENAME DEPOSIT,DEPOSIT_DETAIL


--Part – B:

--1. Rename Column ADATE to AOPENDATE OF DEPOSIT_DETAIL table.
EXEC SP_RENAME 'DEPOSIT_DETAIL.ADATE','AOPENDATE'  

--2. Delete Column AOPENDATE from the DEPOSIT_DETAIL table.
--3. Rename Column CNAME to CustomerName.EXEC SP_RENAME 'CUSTOMER.CNAME','CUSTOMER NAME'


--PART -C :

CREATE TABLE STUDENT_DETAIL (ENROLLMENT_NO VARCHAR(20),NAME VARCHAR(25),CPI DECIMAL(8,2),BIRTHDATE DATETIME)

--From the above given tables perform the following queries (ALTER Operation):

--1. Add two more columns City VARCHAR (20) (Not null) and Backlog INT (Null).
ALTER TABLE STUDENT_DETAIL ADD CITY VARCHAR(20) , BACKLOG INT

--2. Change the size of NAME column of student_detail from VARCHAR (25) to VARCHAR (35).
ALTER TABLE STUDENT_DETAIL ALTER COLUMN NAME VARCHAR(35)

--3. Change the data type DECIMAL to INT in CPI Column.
ALTER TABLE STUDENT_DETAIL ALTER COLUMN CPI INT

--4. Rename Column Enrollment_No to ENO.
EXEC SP_RENAME 'STUDENT_DETAIL.ENROLLMENT_NO','ENO'

--5. Delete Column City from the student_detail table.


--6. Change name of table student_detail to STUDENT_MASTER.
EXEC SP_RENAME STUDENT_DETAIL,STUDENT_MASTER


--DELETE, Truncate, Drop Operation

--PART - A:

CREATE TABLE DEPOSIT_DETAIL (ANO INT,CUSTOMERNAME VARCHAR(35),BNAME VARCHAR(50),AMOUNT INT,PINCODE INT)

--1. Delete all the records of DEPOSIT_DETAIL table having amount greater than and equals to 4000.
DELETE FROM DEPOSIT_DETAIL WHERE AMOUNT >=  4000

--2. Delete all the accounts CHANDI BRANCH.
DELETE FROM DEPOSIT_DETAIL WHERE BNAME = 'BRANCH'

--3. Delete all the accounts having account number (ANO) is greater than 105.
DELETE FROM DEPOSIT_DETAIL WHERE ANO > 105

--4. Delete all the records of Deposit_Detail table. (Use Truncate)
TRUNCATE TABLE DEPOSIT_DETAIL--5. Remove Deposit_Detail table. (Use Drop)DROP TABLE DEPOSIT_DETAIL--PART - B :CREATE TABLE EMPLOYEE_MASTER (EMPNO INT,EMPNAME VARCHAR(25),JOINING_DATE DATETIME,SALARY DECIMAL(8,2),CITY VARCHAR(20))INSERT INTO EMPLOYEE_MASTER (EMPNO,EMPNAME,JOINING_DATE,SALARY,CITY) VALUES(101,'KEYUR',02-05-01,12000,'RAJKOT'),(102,'HARDIK',04-02-15,14000,'AHMEDABAD'),(103,'KAJAL',06-03-14,15000,'BARODA'),(104,'BHOOMI',05-06-23,12500,'AHMEDABAD'),(105,'HARMIT',04-02-15,14000,'RAJKOT'),(106,'MITESH',01-09-25,5000,'JAMNAGAR'),(107,'MEERA',NULL,7000,'MORBI'),(108,'KISHAN',03-02-06,10000,NULL)SELECT *FROM EMPLOYEE_MASTER--From the above given tables perform the following queries (DELETE Operation):

--1. Delete all the records of Employee_MASTER table having salary greater than and equals to 14000.
DELETE FROM EMPLOYEE_MASTER WHERE SALARY >= 14000

--2. Delete all the Employees who belongs to ‘RAJKOT’ city.
DELETE FROM EMPLOYEE_MASTER WHERE CITY = 'RAJKOT'

--3. Delete all the Employees who joined after 1-1-2007.
DELETE FROM EMPLOYEE_MASTER WHERE JOINING_DATE > 2007-01-01

--4. Delete the records of Employees whose joining date is null and Name is not null.
DELETE FROM EMPLOYEE_MASTER WHERE JOINING_DATE IS NULL AND EMPNAME <> NULL

--5. Delete the records of Employees whose salary is 50% of 20000.
 DELETE FROM EMPLOYEE_MASTER WHERE SALARY = 10000

--6. Delete the records of Employees whose City Name is not empty.
DELETE FROM EMPLOYEE_MASTER WHERE CITY = ''

--7. Delete all the records of Employee_MASTER table. (Use Truncate)
TRUNCATE TABLE EMPLOYEE_MASTER

--8. Remove Employee_MASTER table. (Use Drop)
DROP TABLE EMPLOYEE_MASTER