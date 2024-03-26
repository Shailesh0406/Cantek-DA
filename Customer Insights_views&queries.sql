--Creatiing views and queries--
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
  
-- Create a view to display customer details along with their order information
CREATE VIEW Customer_Order_View AS
SELECT c.Customer_Id, c.First_Name, c.Last_Name, c.Email, o.Order_Id, o.Order_Date, o.Total_Amount
FROM Customers c
JOIN Orders o ON c.Customer_Id = o.Customer_Id;

-- Create a view to display product details along with their current inventory information
CREATE VIEW Product_Inventory_View AS
SELECT Product_Id, Product_Name, Unit_Price, Stock_Quantity
FROM Products;

-- Create a view to display high-value customers
CREATE VIEW High_Value_Customers_View AS
SELECT c.Customer_Id, c.First_Name, c.Last_Name, c.Email, SUM(o.Total_Amount) AS Total_Spending
FROM Customers c
JOIN Orders o ON c.Customer_Id = o.Customer_Id
GROUP BY c.Customer_Id, c.First_Name, c.Last_Name, c.Email
HAVING SUM(o.Total_Amount) > 500;

--Query to retrieve active users
SELECT * FROM Users WHERE Status = 'Active';

--Query to retrieve users with specific email domain
SELECT * FROM Users WHERE Email LIKE '%@example.com';

 