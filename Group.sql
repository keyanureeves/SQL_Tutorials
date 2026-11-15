/*
Group by, Order by - its like distinct
*/

SELECT COUNT(Gender)
FROM EmployeeDemographics;

SELECT Gender, COUNT(Gender) AS CountGender
FROM EmployeeDemographics
WHERE Age > 31
GROUP BY Gender
ORDER BY CountGender DESC;

SELECT * 
FROM EmployeeDemographics
ORDER BY Age DESC, Gender DESC;



