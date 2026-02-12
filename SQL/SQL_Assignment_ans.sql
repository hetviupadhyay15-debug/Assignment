create database MarketCo;
use MarketCo;

#ANS 1)
create table Contact(ContactID INT NOT NULL PRIMARY KEY,
					 CompanyID INT,
                     FirstName VARCHAR(45),
                     LastName VARCHAR(45),
                     Street VARCHAR(45),
                     City VARCHAR(45),
                     State VARCHAR(2),
                     Zip VARCHAR(10),
                     IsMain Boolean,
                     Email VARCHAR(45),
                     Phone VARCHAR(12)
);

#ANS 2)
create table Employee(EmployeeID INT NOT NULL PRIMARY KEY,
					  FirstName VARCHAR(45),
                      LastName VARCHAR(45),
                      Salary DECIMAL(10,2),
                      HireDate DATE,
                      JobTitle VARCHAR(25),
                      Email VARCHAR(45),
                      Phone VARCHAR(12)
);

#ANS 3)
create table ContactEmployee(ContactEmployeeID INT NOT NULL PRIMARY KEY,
							 ContactID INT,
                             EmployeeID INT,
                             ContactDate DATE,
                             Description VARCHAR(100)
);


Create table Company(CompanyID INT NOT NULL PRIMARY KEY,
					 CompanyName VARCHAR(45),
                     Street VARCHAR(45),
                     City VARCHAR(45),
                     State VARCHAR(2),
                     Zip VARCHAR(10)
);

#ANS4)                            
UPDATE Employee 
SET Phone = '215-555-8800'
WHERE concat(firstname,' ',lastname) = 'Lesley Bland';

#ANS5)
UPDATE Company 
SET CompanyName = 'Urban Outfitters'
WHERE CompanyName = 'Urban Outfitters, Inc.';

#ANS 6)
DELETE FROM ContactEmployee
WHERE (ContactID, EmployeeID) = (
  SELECT c.ContactID, e.EmployeeID
  FROM Contact c, Employee e
  WHERE c.FirstName = 'Dianne'
    AND c.LastName = 'Connor'
    AND e.FirstName = 'Jack'
    AND e.LastName = 'Lee'
);

#ANS 7) - SCREENSHOT OF RESULTS ARE ALSO ATTACHED
SELECT DISTINCT e.firstname, e.lastname
FROM Employee e
LEFT JOIN ContactEmployee AS ce ON ce.EmployeeID = e.EmployeeID
LEFT JOIN Contact AS ct ON ct.ContactID = ce.ContactID
LEFT JOIN Company AS c ON c.CompanyID = ct.CompanyID
WHERE c.companyName = 'Toll Brothers';

#ANS 8)
/*
% represents zero or more characters.
_ represents exactly one character.
They are used for pattern matching in SQL queries.
*/

#ANS 9)
/*
Normalization is the process of organizing data into tables to reduce redundancy
and improve data integrity.
*/

#ANS 10)
/*
A JOIN combines rows from two or more tables based on a related column between them.
*/

#ANS 11)
/*
DDL (Data Definition Language): Defines database structure (CREATE, ALTER, DROP).

DCL (Data Control Language): Controls user access (GRANT, REVOKE).

DML (Data Manipulation Language): Manages data records (SELECT, INSERT, UPDATE, DELETE).
*/

#ANS 12)
/*
The JOIN clause is used to retrieve data from multiple tables in a single query.
Common types include INNER JOIN, LEFT JOIN, RIGHT JOIN, and FULL JOIN.
*/