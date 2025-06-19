 Medium-Level Tasks 
8. Use UNION to combine results from two queries that select ProductName from Products and ProductName from OutOfStock tables.
   SELECT ProductName FROM Products
UNION
SELECT ProductName FROM OutOfStock;
8. Use UNION to combine results from two queries that select ProductName from Products and ProductName from Products_Discounted tables.
  SELECT ProductName FROM Products
UNION
SELECT ProductName FROM Products_Discounted;
9. Write a query that returns the difference between the Products and Products_Discounted tables using EXCEPT.
  SELECT ProductName FROM Products
EXCEPT
SELECT ProductName FROM Products_Discounted;
10. Create a conditional column using IIF that shows 'Expensive' if the Price is greater than 1000, and 'Affordable' if less, from Products table.
  SELECT 
    ProductName,
    Price,
    IIF(Price > 1000, 'Expensive', 'Affordable') AS PriceCategory
FROM Products;
11. Write a query to find employees in the Employees table who have either Age < 25 or Salary > 60000.
  SELECT *
FROM Employees
WHERE Age < 25 OR Salary > 60000;
12. Update the salary of an employee based on their department, increase by 10% if they work in 'HR' or EmployeeID = 5
  UPDATE Employees
SET Salary = Salary * 1.10
WHERE Department = 'HR' OR EmployeeID = 5;

________________________________________

##  Hard-Level Tasks 
13. Use INTERSECT to show products that are common between Products and Products_Discounted tables.
  SELECT ProductID, ProductName
FROM Products
INTERSECT
SELECT ProductID, ProductName
FROM Products_Discounted;
14. Write a query that uses CASE to assign 'Top Tier' if SaleAmount > 500, 'Mid Tier' if SaleAmount BETWEEN 200 AND 500, and 'Low Tier' otherwise. (From Sales table)
  SELECT 
    SaleID,
    SaleAmount,
    CASE
        WHEN SaleAmount > 500 THEN 'Top Tier'
        WHEN SaleAmount BETWEEN 200 AND 500 THEN 'Mid Tier'
        ELSE 'Low Tier'
    END AS SaleTier
FROM Sales;
15. Use EXCEPT to find customers' ID who have placed orders but do not have a corresponding record in the Invoices table.
  SELECT CustomerID
FROM Orders
EXCEPT
SELECT CustomerID
FROM Invoices;
16. Write a query that uses a CASE statement to determine the discount percentage based on the quantity purchased. Use orders table. Result set should show  customerid, quantity and discount percentage. The discount should be applied as follows
 For example:
Quantity ≥ 100 → 20% discount
Quantity between 50 and 99 → 10% discount
Quantity < 50 → 5% discount
Once you confirm or provide the actual discount logic, I’ll write the full query.
13. Write a query that uses CASE to assign 'Top Tier' if SaleAmount > 500, 'Mid Tier' if SaleAmount BETWEEN 200 AND 500, and 'Low Tier' otherwise. (From Sales table)
  SELECT 
    CustomerID,
    SaleAmount,
    CASE
        WHEN SaleAmount > 500 THEN 'Top Tier'
        WHEN SaleAmount BETWEEN 200 AND 500 THEN 'Mid Tier'
        ELSE 'Low Tier'
    END AS SaleTier
FROM Sales;
14. Use EXCEPT to find customers' ID who have placed orders but do not have a corresponding record in the Sales table.
  SELECT CustomerID
FROM Orders
EXCEPT
SELECT CustomerID
FROM Sales;
15. Write a query that uses a CASE statement to determine the discount percentage based on the quantity purchased. Use orders table. Result set should show  customerid, quantity and discount percentage. The discount should be applied as follows:
        1 item: 3% 
        Between 1 and 3 items : 5% 
        Otherwise: 7% 
@@ -162,25 +161,25 @@ CREATE TABLE Products_Discounted (

INSERT INTO Products_Discounted VALUES
(1, 'Gaming Laptop', 950.00, 'Electronics', 25),
(2, 'High-End Smartphone', 750.00, 'Electronics', 45),
(2, 'Smartphone', 750.00, 'Electronics', 45),
(3, 'Convertible Tablet', 350.00, 'Electronics', 35),
(4, 'Ultra-Wide Monitor', 220.00, 'Electronics', 55),
(5, 'Mechanical Keyboard', 45.00, 'Accessories', 90),
(6, 'Wireless Mouse', 25.00, 'Accessories', 110),
(7, 'Ergonomic Chair', 130.00, 'Furniture', 75),
(7, 'Chair', 130.00, 'Furniture', 75),
(8, 'Standing Desk', 190.00, 'Furniture', 70),
(9, 'Luxury Pen', 4.50, 'Stationery', 280),
(10, 'Leather Notebook', 9.00, 'Stationery', 480),
(11, 'Laser Printer', 160.00, 'Electronics', 20),
(12, 'DSLR Camera', 480.00, 'Electronics', 35),
(13, 'LED Flashlight', 20.00, 'Tools', 190),
(14, 'Designer Shirt', 28.00, 'Clothing', 140),
(15, 'Slim Fit Jeans', 40.00, 'Clothing', 110),
(15, 'Jeans', 40.00, 'Clothing', 110),
(16, 'Winter Jacket', 70.00, 'Clothing', 60),
(17, 'Running Shoes', 55.00, 'Clothing', 90),
(18, 'Wool Hat', 18.00, 'Accessories', 45),
(19, 'Thermal Socks', 9.00, 'Clothing', 180),
(20, 'Graphic T-Shirt', 22.00, 'Clothing', 140),
(20, 'T-Shirt', 22.00, 'Clothing', 140),
(21, 'Desk Lamp', 55.00, 'Furniture', 35),
(22, 'Marble Coffee Table', 95.00, 'Furniture', 30),
(23, 'Hardcover Book', 13.00, 'Stationery', 230),
