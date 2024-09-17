SELECT * FROM STU_INFO

SELECT * FROM RESULT

SELECT * FROM EMPLOYEE_MASTER

--Part – A:

--1. Combine information from student and result table using cross join or Cartesian product.
SELECT * FROM STU_INFO CROSS JOIN RESULT

--2. Perform inner join on Student and Result tables.
SELECT * FROM STU_INFO INNER JOIN RESULT ON STU_INFO.RNO = RESULT.RNO

--3. Perform the left outer join on Student and Result tables.
SELECT * FROM STU_INFO LEFT OUTER JOIN RESULT ON STU_INFO.RNO = RESULT.RNO

--4. Perform the right outer join on Student and Result tables.
SELECT * FROM STU_INFO RIGHT OUTER JOIN RESULT ON STU_INFO.RNO = RESULT.RNO

--5. Perform the full outer join on Student and Result tables.
SELECT * FROM STU_INFO FULL OUTER JOIN RESULT ON STU_INFO.RNO = RESULT.RNO

--6. Display Rno, Name, Branch and SPI of all students.


--7. Display Rno, Name, Branch and SPI of CE branch’s student only.


--8. Display Rno, Name, Branch and SPI of other than EC branch’s student only.


--9. Display average result of each branch.


--10. Display average result of CE and ME branch.