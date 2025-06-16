20. Write a query that shows the average price for each product category, and then filter categories with an average price greater than 150.Add commentMore actions
  ID   Cutomer   Product category   Sales
  1    Tom       lalaku             2000
  2    John      Sumi               3500
  3    Malika    Chikako            1000
  4    Aziz      Sleepy             50
  SELECT category, AVG(price) AS average_price
FROM products GROUP BY category
HAVING AVG(price) > 150;
21. Write a query to calculate the total sales for each Customer, then filter the results to include only Customers with total sales over 1500.
   ID   Cutomer   Product category   Sales
  1    Tom       lalaku             2000
  2    John      Sumi               3500
  3    Malika    Chikako            1000
  4    Aziz      Sleepy             50
  SELECT  customer_id, SUM(sale_amount) AS total_sales
FROM sales GROUP BY  customer_id
HAVING SUM(sale_amount) > 1500;
22. Write a query to find the total and average salary of employees in each department, and filter the output to include only departments with an average salary greater than 65000.
  SELECT department_id, SUM(salary) AS total_salary, AVG(salary) AS average_salary
FROM  employees GROUP BY department_id
HAVING  AVG(salary) > 65000;
23. Write a query to find total sales amount for the orders which costs more than $50 for each customer along with their least purchases.(least amount might be lower than $50).
  SELECT  customer_id, SUM(CASE WHEN order_amount > 50 THEN order_amount ELSE 0 END) AS total_sales_over_50, MIN(order_amount) AS least_purchase
FROM orders GROUP BY customer_id;
24. Write a query that calculates the total sales and counts unique products sold in each month of each year, and then filter the months with at least 2 products sold.(Orders)
  SELECT DATE_TRUNC('month', order_date) AS month, SUM(amount) AS total_sales,COUNT(DISTINCT product_id) AS unique_products
FROM  orders GROUP BY ATE_TRUNC('month', order_date)
HAVING COUNT(DISTINCT product_id) >= 2;
  month         total sales   unique products
  2025-01-01    1250           3
  2025-02-01    2100
25. Write a query to find the MIN and MAX order quantity per Year. From orders table.
    SELECT
    EXTRACT(YEAR FROM order_date) AS year,
    MIN(amount) AS min_order_amount,
    MAX(amount) AS max_order_amount
    FROM  orders GROUP BY EXTRACT(YEAR FROM order_date) ORDER BY   year;
23. Write a query to find total amount for the orders which weights more than $50 for each customer along with their least purchases.(least amount might be lower than 50, use tsql2012.sales.orders table,freight col, ask ur assistant to give the TSQL2012 database).
  SELECT 
    customerid,
    SUM(CASE WHEN freight > 50 THEN freight ELSE 0 END) AS total_freight_over_50,
    MIN(freight) AS least_freight
FROM 
    TSQL2012.Sales.Orders
GROUP BY 
    customerid;
25. Write a query that calculates the total sales and counts unique products sold in each month of each year, and then filter the months with at least 2 products sold.(Orders)
  SELECT 
    YEAR(order_date) AS sales_year,
    MONTH(order_date) AS sales_month,
    SUM(amount) AS total_sales,
    COUNT(DISTINCT product_id) AS unique_products_sold
FROM 
    Orders
GROUP BY 
    YEAR(order_date),
    MONTH(order_date)
HAVING 
    COUNT(DISTINCT product_id) >= 2
ORDER BY 
    sales_year,
    sales_month;
26. Write a query to find the MIN and MAX order quantity per Year. From orders table.
  SELECT 
    YEAR(order_date) AS order_year,
    MIN(quantity) AS min_order_quantity,
    MAX(quantity) AS max_order_quantity
FROM 
    Orders
GROUP BY 
    YEAR(order_date)
ORDER BY 
    order_year;

**Necessary tables:**
