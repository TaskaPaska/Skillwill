CREATE DATABASE MarketDB
GO

USE MarketDB
GO


-- Create Products table
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50) NOT NULL,
    Price DECIMAL(10, 2) NOT NULL
);

-- Insert sample data into Products table
INSERT INTO Products (ProductID, ProductName, Price)
VALUES 
    (101, 'Laptop', 999.99),
    (102, 'Smartphone', 799.99),
    (103, 'TV', 1499.99),
    (104, 'Camera', 499.99),
    (105, 'Calculator', 24.99);

	-- Create Customers table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50) NOT NULL
);

-- Insert sample data into Customers table
INSERT INTO Customers (CustomerID, CustomerName)
VALUES 
    (1, 'John Doe'),
    (2, 'Jane Smith'),
    (3, 'Mike Johnson');

-- Create Orders table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    OrderDate DATE NOT NULL,
    CustomerID INT,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-- Insert sample data into Orders table
INSERT INTO Orders (OrderID, OrderDate, CustomerID)
VALUES 
    (1, '2024-02-01', 1),
    (2, '2024-02-05', 2),
    (3, '2024-02-10', 3),
    (4, '2024-02-15', 1),
    (5, '2024-02-20', 2);



-- Create OrderDetails table
CREATE TABLE OrderDetails (
    OrderID INT,
    ProductID INT,
    Quantity INT NOT NULL,
    PRIMARY KEY (OrderID, ProductID),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

-- Insert sample data into OrderDetails table
INSERT INTO OrderDetails (OrderID, ProductID, Quantity)
VALUES 
    (1, 101, 2),
    (2, 103, 1),
    (3, 102, 3),
    (4, 104, 1),
    (5, 101, 1);
