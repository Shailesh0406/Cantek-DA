# Cantek-DA
Customer Insights database creation using SQL
This database facilitates user to analyse the products purchsed by the customer along with order details. The database has 3 tables as follows:

* The Customers table stores information about customers, including their first and last names and email addresses. The email column is defined as unique to ensure each customer has a unique email address.

* The Orders table stores information about customer orders, including the order date and total amount. It includes a foreign key constraint (Customer_Id) referencing the Customers table to establish a relationship between orders and customers.

* The Products table stores information about products, including the product name, unit price, and stock quantity.
* 5 values are inserted in each table for reference.

-- Database Views--
1. Customer_Order_View: This view will display customer details along with their order information.
2. Product_Inventory_View: This view will display product details along with their current inventory information.
3. High_Value_Customers_View: This view will display customers who have made orders with a total amount exceeding a certain threshold.

--Queries--
1. Query 1: Retrieve Users with Active Status
This query retrieves users who have an active status.
2. Query 3: Retrieve Users with Specific Email Domain
This query retrieves users whose email addresses belong to a specific domain.
