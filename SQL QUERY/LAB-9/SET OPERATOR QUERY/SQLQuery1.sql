--SET Operators

--1. Display name of students who is either in Computer or in Electrical.
SELECT NAME FROM COMPUTER UNION SELECT NAME FROM ELECTRICAL

--2. Display name of students who is either in Computer or in Electrical including duplicate data.
SELECT NAME FROM COMPUTER UNION ALL SELECT NAME FROM ELECTRICAL

--3. Display name of students who is in both Computer and Electrical.
SELECT NAME FROM COMPUTER INTERSECT SELECT NAME FROM ELECTRICAL

--4. Display name of students who are in Computer but not in Electrical.
SELECT NAME FROM COMPUTER EXCEPT SELECT NAME FROM ELECTRICAL

--5. Display name of students who are in Electrical but not in Computer.
SELECT NAME FROM ELECTRICAL EXCEPT SELECT NAME FROM COMPUTER

--6. Display all the details of students who are either in Computer or in Electrical.
SELECT * FROM COMPUTER UNION ALL SELECT * FROM ELECTRICAL
SELECT NAME FROM EMP_DATA UNION SELECT NAME FROM CUSTOMER1

--2. Display name of persons who is either Employee or Customer including duplicate data.
SELECT NAME FROM EMP_DATA UNION ALL SELECT NAME FROM CUSTOMER1

--3. Display name of persons who is both Employee as well as Customer.
SELECT NAME FROM EMP_DATA INTERSECT SELECT NAME FROM CUSTOMER1

--4. Display name of persons who are Employee but not Customer.
SELECT NAME FROM EMP_DATA EXCEPT SELECT NAME FROM CUSTOMER1

--5. Display name of persons who are Customer but not Employee.
SELECT NAME FROM CUSTOMER1 EXCEPT SELECT NAME FROM EMP_DATA

--Part � C:

--1. Perform all the queries of Part-B but display ID and Name columns instead of Name only.
