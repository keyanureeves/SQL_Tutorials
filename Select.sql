/*
Select statement 
*, Top, Distinct, Count, As, Max, Min, Avg
*/

SELECT * 
FROM EmployeeDemographics;

-- top * is used when in a large dataset where we need the top list of dataset

SELECT *
FROM EmployeeDemographics
LIMIT 5;

-- should return everything since every id is unique

SELECT DISTINCT(EmployeeID)
FROM EmployeeDemographics;

SELECT COUNT(LastName) AS LastNameCount
FROM EmployeeDemographics;

SELECT MAX(Salary)
FROM EmployeeSalary;

SELECT MIN(Salary)
FROM EmployeeSalary;

SELECT AVG(Salary)
FROM EmployeeSalary;

SELECT *
FROM sql_demo.EmployeeSalary;





