-- სკრიპტი, რომელიც TestDB მონაცემთა ბაზას ქმნის, Employees და Departments ცხრილებით

-- Create TestDB
CREATE DATABASE TestDB;
GO

-- Use TestDB
USE TestDB;
GO

-- Create Employees table
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY, -- ამას შემდეგ ლექციებში გავარჩევჩთ :)
    FirstName VARCHAR(50), -- სახელი
    LastName VARCHAR(50), -- გვარი
    DepartmentID INT,
    Email VARCHAR(100), -- იმეილი
    HireDate DATE, -- აყვანის თარიღი
    Salary DECIMAL(10, 2) -- ხელფასი
);
GO

-- Create Departments table
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50), -- დეპარტამენტის სახელი
    Location VARCHAR(100) -- ლოკაცია/ადგილმდებარეობა
);
GO

-- Populate Departments table with sample data
INSERT INTO Departments (DepartmentID, DepartmentName, Location)
VALUES (1, 'Engineering', 'Building A'),
       (2, 'Marketing', 'Building B'),
       (3, 'Finance', 'Building C');
GO

-- Populate Employees table with sample data
INSERT INTO Employees (EmployeeID, FirstName, LastName, DepartmentID, Email, HireDate, Salary)
VALUES (1, 'John', 'Doe', 1, 'john.doe@example.com', '2020-01-15', 60000.00),
       (2, 'Jane', 'Smith', 2, 'jane.smith@example.com', '2019-08-20', 55000.00),
       (3, 'Michael', 'Johnson', 1, 'michael.johnson@example.com', '2021-03-10', 65000.00),
       (4, 'Emily', 'Williams', 3, 'emily.williams@example.com', '2022-05-01', 70000.00),
       (5, 'David', 'Brown', 2, 'david.brown@example.com', '2023-11-30', 50000.00);
GO
