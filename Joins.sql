/*
Inner joins, Full/Left, Right Outer Joins
*/

SELECT * 
FROM EmployeeDemographics;

SELECT * 
FROM EmployeeSalary;

SELECT * 
FROM EmployeeDemographics
INNER JOIN EmployeeSalary
    ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID;

SELECT * 
FROM EmployeeDemographics
Left Outer Join EmployeeSalary
    ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID;

SELECT * 
FROM EmployeeDemographics
Right Outer Join EmployeeSalary
    ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID;

-- SELECT * 
-- FROM EmployeeDemographics
-- Full Outer Join EmployeeSalary
--     ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID;

SELECT EmployeeSalary.EmployeeID, FirstName, LastName, JobTitle, Salary
FROM EmployeeDemographics
Right Outer Join EmployeeSalary
    ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID;

SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, JobTitle, Salary
FROM EmployeeDemographics
Left Outer Join EmployeeSalary
    ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID;


    