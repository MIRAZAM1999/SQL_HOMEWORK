### **Basic-Level Tasks (10)**  Add commentMore actions
1. Create a table `Employees` with columns: `EmpID` INT, `Name` (VARCHAR(50)), and `Salary` (DECIMAL(10,2)). 
  ID    name    Salary
  1    John    5000
  2    Mike    5000
  3    Jek     8000
  4    Bin     7500
2. Insert three records into the `Employees` table using different INSERT INTO approaches (single-row insert and multiple-row insert).  
3. Update the `Salary` of an employee where `EmpID = 1`. 
 ID    name    Salary
  1    John    7000
  2    Mike    5000
  3    Jek     8000
  4    Bin     7500
 
 
 .  
4. Delete a record from the `Employees` table where `EmpID = 2`.  
  ID    name    Salary
  1    John    7000
  3    Jek     8000
  4    Bin     7500
   
5. Demonstrate the difference between `DELETE`, `TRUNCATE`, and `DROP` commands on a test table.  
  Great question! Here's a demonstration and explanation of the differences between the SQL commands DELETE, TRUNCATE, and DROP, using a sample table called TestTable.
🧪 Step 1: Create a Sample Table
CREATE TABLE TestTable ( ID INT, Name VARCHAR(50) ); 
🧪 Step 2: Insert Sample Data
INSERT INTO TestTable (ID, Name) VALUES (1, 'Alice'), (2, 'Bob'), (3, 'Charlie'); 
🔍 1. DELETE
DELETE FROM TestTable WHERE ID = 2; 
✅ What it does:
Deletes specific rows (here, only Bob).
Can use a WHERE clause.
Logged operation (slower for large data).
Table and structure remain.
Can be rolled back if within a transaction.
🔍 2. TRUNCATE
TRUNCATE TABLE TestTable; 
✅ What it does:
Deletes all rows quickly.
Cannot use WHERE clause.
Minimal logging (faster than DELETE).
Table structure remains.
Cannot be rolled back in some databases (e.g., SQL Server) once committed.
🔍 3. DROP
DROP TABLE TestTable; 
✅ What it does:
Completely removes the table and its data.
Irreversible (no rollback unless in a transaction).
Removes structure, indexes, constraints, everything.
Summary Table:
FeatureDELETETRUNCATEDROPDeletes rows?✅ Yes (selectively)✅ Yes (all rows)✅ Yes (all + table)Can use WHERE?✅ Yes❌ No❌ NoRollbackable?✅ Usually (in transaction)⚠️ Depends on DB⚠️ Depends on DBFaster?❌ Slower✅ Faster than DELETE✅ FastestKeeps table?✅ Yes✅ Yes❌ No 
Let me know if you want this demonstrated in a specific SQL dialect (MySQL, PostgreSQL, SQL Server, etc.).
5. Give a brief definition for difference between `DELETE`, `TRUNCATE`, and `DROP`.
  DELETE Jadvaldagi malum qatorlarni o'chirish uchun ishlatiladi.
  TRUNCATE Jadvaldagi barcha malumotlarni o'chirish uchun ishlatiladi.
  DROP Jadvallarni butunlay o'chirish uchun ishlatiladi. 
6. Modify the `Name` column in the `Employees` table to `VARCHAR(100)`.  
7. Add a new column `Department` (`VARCHAR(50)`) to the `Employees` table.  
8. Change the data type of the `Salary` column to `FLOAT`.  
@@ -24,7 +24,7 @@
---

### **Intermediate-Level Tasks (6)**  
11. Insert five records into the `Departments` table using `INSERT INTO SELECT` from an existing table.  
11. Insert five records into the `Departments` table using `INSERT INTO SELECT` method(you can write anything you want as data).  
12. Update the `Department` of all employees where `Salary > 5000` to 'Management'.  
13. Write a query that removes all employees but keeps the table structure intact.   
14. Drop the `Department` column from the `Employees` table.   
@@ -42,4 +42,4 @@
22. Use SELECT INTO to create a backup table called Products_Backup containing all Products data.
23. Rename the Products table to Inventory.
24. Alter the Inventory table to change the data type of Price from DECIMAL(10,2) to FLOAT.
25. Add an IDENTITY column named ProductCode that starts from 1000 and increments by 5.
25. Add an IDENTITY column named ProductCode that starts from 1000 and increments by 5 to `Inventory` table.
