/*
Union and Union All
*/

SELECT * 
FROM EmployeeDemographics
Full Outer Join EmployeeSalary
    ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID;