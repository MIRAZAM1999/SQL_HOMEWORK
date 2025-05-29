# Lesson 1: Introduction to SQL Server and SSMS

> **Notes before doing the tasks:**
> - Tasks should be solved using **SQL Server**.
> - Case insensitivity applies.
> - Alias names do not affect the score.
> - Scoring is based on the **correct output**.
> - One correct solution is sufficient.

## Easy
1. Define the following terms: data, database, relational database, and table.
 
  data bu faktlar,raqamlar,matnlar va ma'lumotlarning to'plami.
  database bu ma'lumotlar bazasi, 
  relational database bu malumotlarni jadval ko'rinisgida saqlaydigan ma'lumotlar bazasi.
  table bu malumotlar bazasida malumotlarni jadval shaklida saqlash uchun ishlatiladigan asosiy obyekt 
  
2. List five key features of SQL Server.

  Relational Database Management System, High Availability and Disaster Recovery, Security, Integration Services, Built-in Analytics and Reporting
  
3. What are the different authentication modes available when connecting to SQL Server? (Give at least 2)

  When connecting to SQL Server, there are two main authentication modes available:

1. Windows Authentication (Integrated Security)

Uses the Windows user account credentials of the person currently logged into the operating system.

No need to provide a separate username or password to SQL Server; it trusts the Windows login.

Benefits: Strong security using Active Directory, easier management in enterprise environments.



2. SQL Server Authentication

Requires a separate SQL Server username and password.

Useful when connecting from non-Windows clients or when Windows Authentication is not feasible.

Credentials are managed inside SQL Server, not dependent on Windows accounts.

## Medium
4. Create a new database in SSMS named SchoolDB.
5. Write and execute a query to create a table called Students with columns: StudentID (INT, PRIMARY KEY), Name (VARCHAR(50)), Age (INT).
6. Describe the differences between SQL Server, SSMS, and SQL.

## Hard
7. Research and explain the different SQL commands: DQL, DML, DDL, DCL, TCL with examples.
8. Write a query to insert three records into the Students table.
9. Restore AdventureWorksDW2022.bak file to your server. (write its steps to submit)
   You can find the database from this link :`https://github.com/Microsoft/sql-server-samples/releases/download/adventureworks/AdventureWorksDW2022.bak`
