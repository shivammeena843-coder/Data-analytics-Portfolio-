-- SQL Data Cleaning + Aggregation Example

-- Remove duplicates based on EmployeeID
DELETE FROM Employees
USING (SELECT EmployeeID FROM Employees GROUP BY EmployeeID HAVING COUNT(*)>1) dup
WHERE Employees.EmployeeID = dup.EmployeeID;

-- Replace NULL salaries with average salary
UPDATE Employees
SET Salary = (SELECT AVG(Salary) FROM Employees WHERE Salary IS NOT NULL)
WHERE Salary IS NULL;

-- Aggregation: Find average salary by department
SELECT Department, AVG(Salary) AS AvgSalary
FROM Employees
GROUP BY Department;

-- Aggregation: Count of employees per department
SELECT Department, COUNT(*) AS EmployeeCount
FROM Employees
GROUP BY Department;
