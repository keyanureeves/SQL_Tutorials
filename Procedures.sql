USE sql_demo;


DELIMITER //

CREATE PROCEDURE GetAllEmployees()
BEGIN
    SELECT *
    FROM EmployeeDemographics;
END //



CREATE PROCEDURE GetEmployeeSalaries()
BEGIN
    SELECT *
    FROM EmployeeSalary;
END //



CREATE PROCEDURE GetEmployeesByAge()
BEGIN
    SELECT *
    FROM EmployeeDemographics
    WHERE Age > 30;
END //



CREATE PROCEDURE GetSalesEmployees()
BEGIN
    SELECT *
    FROM EmployeeSalary
    WHERE JobTitle = 'Salesman';
END //



CREATE PROCEDURE GetEmployeeDetails()
BEGIN
    SELECT
        ED.EmployeeID,
        ED.FirstName,
        ED.LastName,
        ED.Age,
        ED.Gender,
        ES.JobTitle,
        ES.Salary
    FROM EmployeeDemographics ED
    INNER JOIN EmployeeSalary ES
        ON ED.EmployeeID = ES.EmployeeID;
END //



CREATE PROCEDURE CalculateNewSalaries()
BEGIN
    SELECT
        ED.FirstName,
        ED.LastName,
        ES.JobTitle,
        ES.Salary,

        CASE
            WHEN ES.JobTitle = 'Salesman'
                THEN ES.Salary + (ES.Salary * 0.10)

            WHEN ES.JobTitle = 'Accountant'
                THEN ES.Salary + (ES.Salary * 0.05)

            WHEN ES.JobTitle = 'HR'
                THEN ES.Salary + (ES.Salary * 0.000001)

            ELSE ES.Salary + (ES.Salary * 0.03)
        END AS NewSalary

    FROM EmployeeDemographics ED
    INNER JOIN EmployeeSalary ES
        ON ED.EmployeeID = ES.EmployeeID;
END //



CREATE PROCEDURE CountEmployeesByJob()
BEGIN
    SELECT
        ES.JobTitle,
        COUNT(*) AS TotalEmployees
    FROM EmployeeSalary ES
    GROUP BY ES.JobTitle
    HAVING COUNT(*) > 1;
END //



CREATE PROCEDURE EmployeeGenderAnalysis()
BEGIN

    WITH CTE_Employee AS
    (
        SELECT
            ED.FirstName,
            ED.LastName,
            ED.Gender,
            ES.Salary,

            COUNT(ED.Gender) OVER (
                PARTITION BY ED.Gender
            ) AS TotalGender,

            AVG(ES.Salary) OVER (
                PARTITION BY ED.Gender
            ) AS AvgSalary

        FROM EmployeeDemographics ED
        INNER JOIN EmployeeSalary ES
            ON ED.EmployeeID = ES.EmployeeID

        WHERE ES.Salary > 450000
    )

    SELECT *
    FROM CTE_Employee;

END //



CREATE PROCEDURE GetEmployeesByAgeParameter(
    IN EmployeeAge INT
)
BEGIN
    SELECT *
    FROM EmployeeDemographics
    WHERE Age > EmployeeAge;
END //



CREATE PROCEDURE GetEmployeesByGender(
    IN EmployeeGender VARCHAR(50)
)
BEGIN
    SELECT
        EmployeeID,
        FirstName,
        LastName,
        Gender
    FROM EmployeeDemographics
    WHERE Gender = EmployeeGender;
END //


DELIMITER ;



CALL GetAllEmployees();

CALL GetEmployeeSalaries();

CALL GetEmployeesByAge();

CALL GetSalesEmployees();

CALL GetEmployeeDetails();

CALL CalculateNewSalaries();

CALL CountEmployeesByJob();

CALL EmployeeGenderAnalysis();

CALL GetEmployeesByAgeParameter(30);

CALL GetEmployeesByGender('Male');