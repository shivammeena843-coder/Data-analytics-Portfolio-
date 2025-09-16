-- Create employees table
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(50),
    Department VARCHAR(50),
    Salary INT,
    JoiningDate DATE
);

-- Insert dummy data
INSERT INTO Employees VALUES
(1, 'John Doe', 'Sales', 50000, '2022-01-15'),
(2, 'Jane Smith', 'HR', 45000, '2021-11-10'),
(3, 'Mike Johnson', 'IT', 60000, '2020-05-20');

-- Example query
SELECT Department, AVG(Salary) AS AvgSalary
FROM Employees
GROUP BY Department;
