/*
Having clauses 
*/

SELECT 
    JobTitle, 
    COUNT(JobTitle)
FROM EmployeeDemographics
JOIN EmployeeSalary
    ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
GROUP BY JobTitle
HAVING COUNT(JobTitle) > 1;