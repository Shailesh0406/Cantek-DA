--Customer Insights database--
-- Create the Customers table
CREATE TABLE Customers (
    Customer_Id SERIAL PRIMARY KEY,
    First_Name VARCHAR(50),
    Last_Name VARCHAR(50),
    Email VARCHAR(100) UNIQUE
);

-- Create the Orders table
CREATE TABLE Orders (
    Order_Id SERIAL PRIMARY KEY,
    Customer_Id INT,
    Order_Date DATE,
    Total_Amount DECIMAL(10, 2),
    CONSTRAINT fk_customer FOREIGN KEY (Customer_Id) REFERENCES Customers(Customer_Id)
);

-- Create the Products table
CREATE TABLE Products (
    Product_Id SERIAL PRIMARY KEY,
    Product_Name VARCHAR(100),
    Unit_Price DECIMAL(10, 2),
    Stock_Quantity INT
);

-- Insert values into the Customers table
INSERT INTO Customers (First_Name, Last_Name, Email)
VALUES 
  ('John', 'Doe', 'john.doe@example.com'),
  ('Jane', 'Smith', 'jane.smith@example.com'),
  ('David', 'Brown', 'david.brown@example.com');

-- Insert values into the Orders table
INSERT INTO Orders (Customer_Id, Order_Date, Total_Amount)
VALUES 
  (1, '2024-03-20', 100.00),
  (2, '2024-03-21', 150.00),
  (5, '2024-03-24', 180.00);

-- Insert values into the Products table
INSERT INTO Products (Product_Name, Unit_Price, Stock_Quantity)
VALUES 
  ('Laptop', 999.99, 10),
  ('Smartphone', 599.99, 15),
  ('Smartwatch', 199.99, 12);