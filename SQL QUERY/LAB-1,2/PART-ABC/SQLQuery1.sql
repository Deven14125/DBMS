CREATE TABLE DEPOSITS (ACTNO INT,CNAME VARCHAR(50),BNAME VARCHAR(50),AMOUNT DECIMAL(8,2),ADATE DATETIME)

INSERT INTO DEPOSITS (ACTNO,CNAME,BNAME,AMOUNT,ADATE) VALUES 
(101,'ANIL','VRCE',1000,95-03-01),
(102,'SUNIL','AJNI',5000,96-01-04),
(103,'MEHUL','KAROLBAGH',3500,95-11-17),
(104,'MADHURI','CHANDI',1200,95-12-17),
(105,'PRAMOD','M.G.ROAD',3000,96-03-27),
(106,'SANDIP','ANDHERI',2000,96-03-31),
(107,'SHIVANI','VIRAR',1000,95-09-05),
(108,'KRANRI','NEHRUPLACE',5000,95-07-02),
(109,'MINU','POWAI',7000,95-08-10)

SELECT *FROM DEPOSITS

CREATE TABLE BRANCH (BNAME VARCHAR(50),CITY VARCHAR(50))

INSERT INTO BRANCH (BNAME,CITY) VALUES
('VRCE','NAGPUR'),
('AJNI','NAGPUR'),
('KAROLBAGH','DELHI'),
('CHANDI','DELHI'),
('DHARAMPETH','NAGPUR'),
('M.G.ROAD','BANGLORE'),
('ANDHERI','BOMBAY'),
('VIRAR','BOMBAY'),
('NEHRUPLACE','DELHI'),
('POWAI','BOMBAY')

SELECT *FROM BRANCH

CREATE TABLE CUSTOMERS (CNAME VARCHAR(50),CITY VARCHAR(50))

INSERT INTO CUSTOMERS (CNAME,CITY) VALUES
('ANIL','CALCUTTA'),
('SUNIL','DELHI'),
('MEHUL','BARODA'),
('MANDAR','PATNA'),
('MADHURI','NAGPUR'),
('PRAMOD','NAGPUR'),
('SANDIP','SURAT'),
('SHIVANI','BOMBAY'),
('KRANTI','BOMBAY'),
('NAREN','BOMBAY')

SELECT *FROM CUSTOMERS

CREATE TABLE BORROW (LOANNO INT,CNAME VARCHAR(50),BNAME VARCHAR(50),AMOUNT DECIMAL(8,2))

INSERT INTO BORROW (LOANNO,CNAME,BNAME,AMOUNT) VALUES
(201,'ANIL','VRCE',1000),
(206,'MEHUL','AJNI',5000),
(311,'SUNIL','DHARAMPETH',3000),
(321,'MADHURI','ANDHERI',2000),
(375,'PRAMOD','VIRAR',8000),
(481,'KRANTI','NEHRUPLACE',3000)

SELECT *FROM BORROW


--Part � A:

--1. Retrieve all data from table DEPOSIT.
SELECT *FROM DEPOSIT

--2. Retrieve all data from table BORROW.
SELECT *FROM BORROW

--3. Retrieve all data from table CUSTOMERS.
SELECT *FROM CUSTOMERS

--4. Display Account No, Customer Name & Amount from DEPOSIT.
SELECT ACTNO,CNAME,AMOUNT FROM DEPOSIT

--5. Display Loan No, Amount from BORROW.
SELECT LOANNO,AMOUNT FROM BORROW

--6. Display loan details of all customers who belongs to �ANDHERI� branch from borrow table.
SELECT *FROM BORROW WHERE BNAME = 'ANDHERI';

--7. Give account no and amount of depositor, whose account no is equals to 106 from deposit table.
SELECT ACTNO,AMOUNT FROM DEPOSIT WHERE ACTNO = 106 

--8. Give name of borrowers having amount greater than 5000 from borrow table.
SELECT *FROM BORROW WHERE AMOUNT > 5000

--9. Give name of customers who opened account after date '1-12-96' from deposit table.
SELECT CNAME FROM DEPOSIT WHERE ADATE > 96-12-01

--10. Display name of customers whose account no is less than 105 from deposit table.
SELECT CNAME FROM DEPOSIT WHERE ACTNO < 105

--11. Display name of customer who belongs to either �NAGPUR� or �DELHI� from customer table. (OR & IN)
SELECT CNAME FROM CUSTOMERS WHERE CITY = 'NAGPUR' OR CITY = 'DELHI'
SELECT CNAME FROM CUSTOMERS WHERE CITY IN ('NAGPUR','DELHI')

--12. Display name of customers with branch whose amount is greater than 4000 and account no is less than
--105 from deposit table.
SELECT CNAME,BNAME FROM DEPOSIT WHERE AMOUNT > 4000 AND ACTNO < 105

--13. Find all borrowers whose amount is greater than equals to 3000 & less than equals to 8000 from borrow
--table. (AND & BETWEEN)
SELECT *FROM BORROW WHERE AMOUNT >= 3000 AND AMOUNT <= 8000
SELECT *FROM BORROW WHERE AMOUNT BETWEEN 3000 AND 8000

--14. Find all depositors who do not belongs to �ANDHERI� branch from deposit table.
SELECT *FROM DEPOSIT WHERE BNAME <> 'ANDHERI'

--15. Display Account No, Customer Name & Amount of such customers who belongs to �AJNI�, �KAROLBAGH�
--Or �M.G.ROAD� and Account No is less than 104 from deposit table.
SELECT ACTNO,CNAME,AMOUNT FROM DEPOSIT WHERE BNAME IN('AJNI','KAROLBAGH','M.G.ROAD') AND ACTNO < 104


--Part � B:

--1. Display all the details of first five customers from deposit table.
SELECT TOP 5 *FROM DEPOSIT 

--2. Display all the details of first three depositors whose amount is greater than 1000.
SELECT TOP 3 *FROM DEPOSIT WHERE AMOUNT > 1000

--3. Display Loan No, Customer Name of first five borrowers whose branch name does not belongs to
--�ANDHERI� from borrow table.
SELECT TOP 5 LOANNO,CNAME FROM BORROW WHERE BNAME <> 'ANDHERI'

--4. Retrieve all unique cities using DISTINCT. (Use Customers Table)
SELECT DISTINCT CITY FROM CUSTOMERS

--5. Retrieve all unique branches using DISTINCT. (Use Branch Table)
SELECT DISTINCT BNAME FROM BORROW


--Part � C:

--1. Retrieve top 50% record from table BORROW.
SELECT TOP 50 PERCENT *FROM BORROW

--2. Display top 10% amount from table DEPOSIT.
SELECT TOP 10 PERCENT *FROM DEPOSIT

--3. Display top 25% customer who deposited more than 5000.
SELECT TOP 25 PERCENT *FROM DEPOSIT WHERE AMOUNT > 5000

--4. Retrieve first 10% Loan Amounts.
SELECT TOP 10 PERCENT AMOUNT FROM BORROW

--5. Retrieve all unique customer names with city.
SELECT DISTINCT CNAME,CITY FROM CUSTOMERS

--6. Retrieve all Loan records with one more column in Loan Amount as 10% extra amount.
 --7. Retrieve all odd/even value loan number from Borrow table.SELECT LOANNO FROM BORROW WHERE LOANNO/2<>1