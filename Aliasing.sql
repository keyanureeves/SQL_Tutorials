/*
Aliasing 
*/

/* Aliasing column names - can use cconcat method*/
-- SELECT FirstName + ' ' + LastName  AS FullName 
-- FROM EmployeeDemographics

-- SELECT AVG(Age) AS AvgAge
-- FROM EmployeeDemographics

-- Aliasing table names 
SELECT Demo.EmployeeID, Sal.Salary
FROM EmployeeDemographics AS Demo
JOIN EmployeeSalary AS Sal
    ON Demo.EmployeeID = Sal.EmployeeID



