CREATE TABLE Dept (
    DepartmentID INT,
    DepartmentName VARCHAR(100),
    DepartmentCode VARCHAR(50),
    Location VARCHAR(50)
);

CREATE TABLE Person (
    PersonID INT,
    PersonName VARCHAR(100),
    DepartmentID INT,
    Salary DECIMAL(8, 2),
    JoiningDate DATETIME,
    City VARCHAR(100)
);

INSERT INTO Dept (DepartmentID, DepartmentName, DepartmentCode, Location) VALUES
(1, 'Admin', 'Adm', 'A-Block'),
(2, 'Computer', 'CE', 'C-Block'),
(3, 'Civil', 'CI', 'G-Block'),
(4, 'Electrical', 'EE', 'E-Block'),
(5, 'Mechanical', 'ME', 'B-Block');

INSERT INTO Person (PersonID, PersonName, DepartmentID, Salary, JoiningDate, City) VALUES
(101, 'Rahul Tripathi', 2, 56000, '2000-01-01', 'Rajkot'),
(102, 'Hardik Pandya', 3, 18000, '2001-09-25', 'Ahmedabad'),
(103, 'Bhavin Kanani', 4, 25000, '2000-05-14', 'Baroda'),
(104, 'Bhoomi Vaishnav', 1, 39000, '2005-02-08', 'Rajkot'),
(105, 'Rohit Topiya', 2, 17000, '2001-07-23', 'Jamnagar'),
(106, 'Priya Menpara', NULL, 9000, '2000-10-18', 'Ahmedabad'),
(107, 'Neha Sharma', 2, 34000, '2002-12-25', 'Rajkot'),
(108, 'Nayan Goswami', 3, 25000, '2001-07-01', 'Rajkot'),
(109, 'Mehul Bhundiya', 4, 13500, '2005-01-09', 'Baroda'),
(110, 'Mohit Maru', 5, 14000, '2000-05-25', 'Jamnagar');


SELECT * FROM Person
SELECT * FROM Dept


--Part – A:

--1. Find all persons with their department name & code.
SELECT PersonName,DepartmentName,DepartmentCode from Person inner join Dept on Person.DepartmentID = Dept.DepartmentID

--2. Find the person's name whose department is in C-Block.
Select PersonName from Person inner join Dept on Person.DepartmentID = Dept.DepartmentID where Dept.Location = 'C-Block'

--3. Retrieve person name, salary & department name who belongs to Jamnagar city.
Select PersonName,Salary,DepartmentName from Person inner join Dept on Person.DepartmentID = Dept.DepartmentID where Person.City='Jamnagar'

--4. Retrieve person name, salary & department name who does not belong to Rajkot city.
Select PersonName,Salary,DepartmentName from Person inner join Dept on Person.DepartmentID = Dept.DepartmentID where Person.City<>'Jamnagar'

--5. Retrieve person’s name of the person who joined the Civil department after 1-Aug-2001.
Select PersonName from Person inner join Dept on Person.DepartmentID = Dept.DepartmentID where Dept.DepartmentName='Civil' and JoiningDate>'1-Aug-2001'

--6. Find details of all persons who belong to the computer department.
Select * from Person inner join Dept on Person.DepartmentID = Dept.DepartmentID where Dept.DepartmentName='Computer'


--7. Display all the person's name with the department whose joining date difference with the current date
--is more than 365 days.
Select PersonName from Person inner join Dept on Person.DepartmentID = Dept.DepartmentID where DATEDIFF(day,JoiningDate,GETDATE())>365

--8. Find department wise person counts.
Select DepartmentName,count(PersonId) from Person inner join Dept on Person.DepartmentID = Dept.DepartmentID Group by DepartmentName

--9. Give department wise maximum & minimum salary with department name.
Select DepartmentName,max(Salary) as MAX_Salary,min(Salary) as MIN_Salary from Person inner join Dept on Person.DepartmentID = Dept.DepartmentID group by DepartmentName

--10. Find city wise total, average, maximum and minimum salary.
Select City,sum(Salary) as Total_Salary,MIN(Salary) as MIN_Salary,AVG(Salary) as AVG_Salary,MAX(Salary) as MAX_Salary from Person inner join Dept on Person.DepartmentID = Dept.DepartmentID group by City

--11. Find the average salary of a person who belongs to Ahmedabad city.
Select AVG(Salary) from Person where City = 'Ahmedabad'

--12. Produce Output Like: <PersonName> lives in <City> and works in <DepartmentName> Department. (In
--single column)
Select PersonName +' lives in ' + City + ' and works in ' + DepartmentName +' Department ' from Person inner join Dept on Person.DepartmentID = Dept.DepartmentID  


--Part – B:

--1. Produce Output Like: <PersonName> earns <Salary> from <DepartmentName> department monthly. (In
--single column)
Select CONCAT(PersonName ,' earns ' , Salary , ' from ' , DepartmentName ,' Department Monthly ') from Person inner join Dept on Person.DepartmentID = Dept.DepartmentID  

--2. Find city & department wise total, average & maximum salaries.
Select City,DepartmentName,sum(Salary) as Total_Salary,MIN(Salary) as MIN_Salary,AVG(Salary) as AVG_Salary,MAX(Salary) as MAX_Salary from Person inner join Dept on Person.DepartmentID = Dept.DepartmentID group by City,DepartmentName

--3. Find all persons who do not belong to any department.
Select PersonName from Person where DepartmentID is null

--4. Find all departments whose total salary is exceeding 100000.
Select DepartmentName ,SUM(Salary) from Person inner join Dept on Person.DepartmentID = Dept.DepartmentID group by DepartmentName having SUM(Salary) > 100000

--Part – C:


--1. List all departments who have no person.
Select DepartmentName from Person inner join Dept on Person.DepartmentID = Dept.DepartmentID group by DepartmentName having COUNT(PersonName)=0

--2. List out department names in which more than two persons are working.
Select DepartmentName from Person inner join Dept on Person.DepartmentID = Dept.DepartmentID group by DepartmentName having COUNT(PersonName)>2

--3. Give a 10% increment in the computer department employee’s salary. (Use Update)
Update Person set Salary = 0.1*Salary + Salary WHERE 
