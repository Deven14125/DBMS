--Lab 10 Implement SQL View
--Views (First create a view then display all views)
--Part – A:   

CREATE TABLE STUDENT_INFO (RNO INT,NAME VARCHAR(20),BRANCH VARCHAR(20),SPI DECIMAL(8,2),BKLOG INT)

INSERT INTO STUDENT_INFO (RNO,NAME,BRANCH,SPI,BKLOG) VALUES
(101,'RAJU','CE',8.80,0),
(102,'AMIT','CE',2.20,3),
(103,'SANJAY','ME',1.50,6),
(104,'NEHA','EC',7.65,1),
(105,'MEERA','EE',5.52,2),
(106,'MAHESH','EC',4.50,3)

--1. Create a view Personal with all columns.
CREATE VIEW VW_PERSONAL AS SELECT * FROM STUDENT_INFO
SELECT * FROM VW_PERSONAL

--2. Create a view Student_Details having columns Name, Branch & SPI.
CREATE VIEW VW_STUDENT_DETAILS AS SELECT NAME,BRANCH,SPI FROM STUDENT_INFO
SELECT * FROM VW_STUDENT_DETAILS

--3. Create a view AcademicData having columns RNo, Name, Branch.
CREATE VIEW VW_ACADEMIC_DATA AS SELECT RNO,NAME,BRANCH FROM STUDENT_INFO
SELECT * FROM VW_ACADEMIC_DATA

--4. Create a view Student_ bklog having all columns but students whose bklog more than 2.
CREATE VIEW VW_STUDENT_BKLOG AS SELECT * FROM STUDENT_INFO WHERE BKLOG > 2 ------------------------------
SELECT * FROM VW_ACADEMIC_DATA

--5. Create a view Student_Pattern having RNo, Name & Branch columns in which Name consists of four
--letters.
CREATE VIEW VW_STUDENT_PATTERN AS SELECT RNO,NAME,BRANCH FROM STUDENT_INFO WHERE NAME LIKE '____'
SELECT * FROM VW_STUDENT_PATTERN

--6. Insert a new record to AcademicData view. (107, Meet, ME)
INSERT INTO VW_ACADEMIC_DATA VALUES (107,'MEET','ME')
SELECT * FROM VW_ACADEMIC_DATA

--7. Update the branch of Amit from CE to ME in Student_Details view.
UPDATE VW_STUDENT_DETAILS SET BRANCH = 'ME' WHERE NAME = 'AMIT'
SELECT * FROM VW_STUDENT_DETAILS

--8. Delete a student whose roll number is 104 from AcademicData view.
DELETE FROM VW_ACADEMIC_DATA WHERE RNO = 104;
SELECT * FROM VW_ACADEMIC_DATA

--Part – B:

--1. Create a view that displays information of all students whose SPI is above 8.5
CREATE VIEW VW_SPI_DISPLAY AS SELECT * FROM STUDENT_INFO WHERE SPI > 8.5
SELECT * FROM VW_SPI_DISPLAY

--2. Create a view that displays 0 backlog students.
CREATE VIEW VW_BKLOG_DISPLAY AS SELECT * FROM STUDENT_INFO WHERE BKLOG = 0;
SELECT * FROM VW_BKLOG_DISPLAY

--3. Create a view Computerview that displays CE branch data only.
CREATE VIEW VW_COMPUTER_VIEW AS SELECT * FROM STUDENT_INFO WHERE BRANCH = 'CE'
SELECT * FROM VW_COMPUTER_VIEW

--Part – C:

--1. Create a view Result_EC that displays the name and SPI of students with SPI less than 5 of branch EC.
CREATE VIEW VW_RESULT_EC AS SELECT NAME,SPI FROM STUDENT_INFO WHERE SPI < 5 AND BRANCH = 'EC'
SELECT * FROM VW_RESULT_EC

--2. Update the result of student MAHESH to 4.90 in Result_EC view.
UPDATE VW_RESULT_EC SET SPI = 4.90 WHERE NAME = 'MAHESH'
SELECT * FROM VW_RESULT_EC

--3. Create a view Stu_Bklog with RNo, Name and Bklog columns in which name starts with ‘M’ and having
--bklogs more than 5.
CREATE VIEW VW_STU_BKLOG AS SELECT RNO,NAME,BKLOG FROM STUDENT_INFO WHERE NAME LIKE 'M%' AND BKLOG > 5 
SELECT * FROM VW_STU_BKLOG

--4. Drop Computerview form the database.
DROP VIEW VW_COMPUTER_VIEW