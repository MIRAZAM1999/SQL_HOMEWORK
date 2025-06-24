11. Using Employees, Departments table
List employee names and department names where department IDs are not equal. It means: Show all mismatched employee-department combinations.
  SELECT 
    e.employee_name, 
    d.department_name
FROM 
    Employees e
CROSS JOIN 
    Departments d
WHERE 
    e.department_id <> d.department_id;
12. Using Orders, Products table
Show orders where ordered quantity is greater than stock quantity.
  SELECT 
    o.order_id, 
    o.product_id, 
    o.quantity AS ordered_quantity,
    p.product_name,
    p.stock_quantity
FROM 
    Orders o
JOIN 
    Products p ON o.product_id = p.product_id
WHERE 
    o.quantity > p.stock_quantity;
13. Using Customers, Sales table
List customer names and product IDs where sale amount is 500 or more.
  SELECT 
    c.customer_name, 
    s.product_id, 
    s.sale_amount
FROM 
    Customers c
JOIN 
    Sales s ON c.customer_id = s.customer_id
WHERE 
    s.sale_amount >= 500;
14. Using Courses, Enrollments, Students table
List student names and course names they’re enrolled in.
  SELECT 
    s.student_name, 
    c.course_name
FROM 
    Students s
JOIN 
    Enrollments e ON s.student_id = e.student_id
JOIN 
    Courses c ON e.course_id = c.course_id;
15. Using Products, Suppliers table
List product and supplier names where supplier name contains “Tech”.
  SELECT 
    p.product_name, 
    s.supplier_name
FROM 
    Products p
JOIN 
    Suppliers s ON p.supplier_id = s.supplier_id
WHERE 
    s.supplier_name LIKE '%Tech%';
16. Using Orders, Payments table
Show orders where payment amount is less than total amount.
  SELECT 
    o.order_id, 
    o.total_amount, 
    p.payment_amount
FROM 
    Orders o
JOIN 
    Payments p ON o.order_id = p.order_id
WHERE 
    p.payment_amount < o.total_amount;
17. Using Employees table
List employee names with salaries greater than their manager’s salary.
  SELECT 
    e.employee_name AS employee_name,
    e.salary AS employee_salary,
    m.employee_name AS manager_name,
    m.salary AS manager_salary
FROM 
    Employees e
JOIN 
    Employees m ON e.manager_id = m.employee_id
WHERE 
    e.salary > m.salary;
18. Using Products, Categories table
Show products where category is either 'Electronics' or 'Furniture'.
  SELECT 
    p.product_name, 
    c.category_name
FROM 
    Products p
JOIN 
    Categories c ON p.category_id = c.category_id
WHERE 
    c.category_name IN ('Electronics', 'Furniture');
19. Using Sales, Customers table
Show all sales from customers who are from 'USA'.
  SELECT 
    s.sale_id,
    s.product_id,
    s.sale_amount,
    c.customer_name,
    c.country
FROM 
    Sales s
JOIN 
    Customers c ON s.customer_id = c.customer_id
WHERE 
    c.country = 'USA';
20. Using Orders, Customers table
List orders made by customers from 'Germany' and order total > 100.
  SELECT 
    o.order_id,
    o.order_date,
    o.total_amount,
    c.customer_name,
    c.country
FROM 
    Orders o
JOIN 
    Customers c ON o.customer_id = c.customer_id
WHERE 
    c.country = 'Germany'
    AND o.total_amount > 100;

## 🔴 Hard (5 puzzles)
21. Using Employees table
List all pairs of employees from different departments.
22. Using Payments, Orders, Products table
List payment details where the paid amount is not equal to (Quantity × Product Price).
23. Using Students, Enrollments, Courses table
Find students who are not enrolled in any course.
24. Using Employees table
List employees who are managers of someone, but their salary is less than or equal to the person they manage.
25. Using Orders, Payments, Customers table
List customers who have made an order, but no payment has been recorded for it.
11. Using Employees, Departments table List employee names and department names where department IDs are not equal. It means: Show all mismatched employee-department combinations.
12. Using Orders, Products table Show orders where ordered quantity is greater than stock quantity.
13. Using Customers, Sales table List customer names and product IDs where sale amount is 500 or more.
14. Using Courses, Enrollments, Students table List student names and course names they’re enrolled in.
15. Using Products, Suppliers table List product and supplier names where supplier name contains “Tech”.
16. Using Orders, Payments table Show orders where payment amount is less than total amount.
17. Using Employees and Departments tables, get the Department Name for each employee.
18. Using Products, Categories table Show products where category is either 'Electronics' or 'Furniture'.
19. Using Sales, Customers table Show all sales from customers who are from 'USA'.
20. Using Orders, Customers table List orders made by customers from 'Germany' and order total > 100.

## 🔴 Hard (5 puzzles)(Do some research for the tasks below)
21. Using Employees table List all pairs of employees from different departments.
22. Using Payments, Orders, Products table List payment details where the paid amount is not equal to (Quantity × Product Price).
23. Using Students, Enrollments, Courses table Find students who are not enrolled in any course.
24. Using Employees table List employees who are managers of someone, but their salary is less than or equal to the person they manage.
25. Using Orders, Payments, Customers table List customers who have made an order, but no payment has been recorded for it.
