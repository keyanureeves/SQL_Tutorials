/*
CTEs 
*/

WITH CTE_Employee AS 
(
    SELECT 
        FirstName, 
        LastName, 
        Gender, 
        Salary,
        COUNT(Gender) OVER (PARTITION BY Gender) AS TotalGender,
        AVG(Salary) OVER (PARTITION BY Gender) AS AvgSalary

    FROM EmployeeDemographics emp

    JOIN EmployeeSalary sal 
        ON emp.EmployeeID = sal.EmployeeID

    WHERE Salary > 450000
)

SELECT *
FROM CTE_Employee;
