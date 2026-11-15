/*
WHERE Statement
=, <>, <, >, And, Or, Like, Null, Not Null, In
*/

use sql_demo;

SELECT * 
FROM EmployeeDemographics
WHERE FirstName ='Jim';

SELECT * 
FROM EmployeeDemographics
WHERE Age > 30;

SELECT * 
FROM EmployeeDemographics
WHERE Age <= 30 AND Gender = 'Male';

SELECT * 
FROM EmployeeDemographics
WHERE Age <= 30 OR Gender = 'Male';

SELECT * 
FROM EmployeeDemographics
WHERE LastName LIKE 'S%';


SELECT * 
FROM EmployeeDemographics
WHERE LastName LIKE 'S%';


SELECT * 
FROM EmployeeDemographics
WHERE LastName LIKE 'S%O%';

SELECT * 
FROM EmployeeDemographics
WHERE FirstName is NOT NULL;


SELECT * 
FROM EmployeeDemographics
WHERE FirstName IN ('Jim', 'Michael')

