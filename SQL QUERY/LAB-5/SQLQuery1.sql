CREATE TABLE STUDENT (STUID INT ,FIRST_NAME VARCHAR(25),LAST_NAME VARCHAR(25),WEBSITE VARCHAR(50),CITY VARCHAR(25),ADDRESS VARCHAR(50))

INSERT INTO STUDENT (STUID,FIRST_NAME,LAST_NAME,WEBSITE,CITY,ADDRESS) VALUES
(1011,'KEYUR','PATEL','TECHONTHENET.COM','RAJKOT','A-303 VASANT-KUNJ RAJKOT'),
(1022,'HARDIK','SHAH','DIGMINECRAFT.COM','AHMEDABAD','RAM-KRUPA RAIYA ROAD'),
(1033,'KAJAL','TRIVEDI','BIGACTIVITIES.COM','BARODA','RAJ-BHAVAN PLOT NEAR GARDEN'),
(1044,'BHOOMI','GAJERA','CHECKYOURMATH.COM','AHMEDABAD','JIG S HOME NAROL'),
(1055,'HARMIT','MITEL','@ME.DARSHAN.COM','RAJKOT','B-55  Raj Residency'),
(1066,'Ashok', 'Jani', NULL, 'Baroda','A502 Club House Building')	

--PART - A:

--From the above given tables perform the following queries (LIKE Operation):

--1. Display the name of students whose name starts with ‘k’.
SELECT FIRST_NAME FROM STUDENT WHERE FIRST_NAME LIKE 'K%'

--2. Display the name of students whose name consists of five characters.
SELECT FIRST_NAME FROM STUDENT WHERE FIRST_NAME LIKE '_____'

--3. Retrieve the first name & last name of students whose city name ends with a & contains six characters.
SELECT FIRST_NAME,LAST_NAME FROM STUDENT WHERE CITY LIKE '_____A'

--4. Display all the students whose last name ends with ‘tel’.
SELECT LAST_NAME FROM STUDENT WHERE LAST_NAME LIKE '%TEL'

--5. Display all the students whose first name starts with ‘ha’ & ends with‘t’.
SELECT FIRST_NAME FROM STUDENT WHERE FIRST_NAME LIKE 'HA%T'

--6. Display all the students whose first name starts with ‘k’ and third character is ‘y’.
SELECT FIRST_NAME FROM STUDENT WHERE FIRST_NAME LIKE 'K%_Y'

--7. Display the name of students having no website and name consists of five characters.


--8. Display all the students whose last name consist of ‘jer’.
SELECT LAST_NAME FROM STUDENT WHERE LAST_NAME LIKE '%JER'

--9. Display all the students whose city name starts with either ‘r’ or ‘b’.
SELECT CITY FROM STUDENT WHERE CITY LIKE '[R,B]%'

--10. Display all the name students having websites.


--11. Display all the students whose name starts from alphabet A to H.
SELECT FIRST_NAME FROM STUDENT WHERE FIRST_NAME LIKE '[A-H]%'

--12. Display all the students whose name’s second character is vowel.


--13. Display the name of students having no website and name consists of minimum five characters.


--14. Display all the students whose last name starts with ‘Pat’.
SELECT LAST_NAME FROM STUDENT WHERE LAST_NAME LIKE 'PAT%'

--15. Display all the students whose city name does not starts with ‘b’.


--PART - B :

--1. Display all the students whose name starts from alphabet A or H.
SELECT FIRST_NAME FROM STUDENT WHERE LIKE '[A,H]%'

--2. Display all the students whose name’s second character is vowel and of and start with H.


--3. Display all the students whose last name does not ends with ‘a’.


--4. Display all the students whose first name starts with consonant.
--5. Display all the students whose website contains .net-- PART - C :--1. Display all the students whose address consist of -.


--2. Display all the students whose address contains single quote or double quote.


--3. Display all the students whose website contains @.


--4. Display all the names those are either four or five characters.