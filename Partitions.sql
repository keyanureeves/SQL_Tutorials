/*
Partitions 
*/
-- SELECT * 
-- FROM EmployeeDemographics;

-- SELECT * 
-- FROM EmployeeSalary;

SELECT FirstName, Lastname, Gender, Salary, COUNT(Gender) OVER (PARTITION BY Gender) as TotalGender
FROM EmployeeDemographics dem
JOIN EmployeeSalary sal 
    ON dem.EmployeeID = sal.EmployeeID

