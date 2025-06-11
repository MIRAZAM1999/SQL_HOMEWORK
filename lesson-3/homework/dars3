5. Explain the difference between NULL and NOT NULL.
  Null bu bo'sh qiymat, yani hech qandayqiymat mavjud emas degani.
  not null bu qiymat bo'lishi kerak degani.
6. Add a UNIQUE constraint to the ProductName column in the Products table.
  To add a UNIQUE constraint to the ProductName column in the Products table, you can use the following SQL statement:
ALTER TABLE Products ADD CONSTRAINT unique_product_name UNIQUE (ProductName); 
🔍 Izoh:
ALTER TABLE – mavjud jadvalga o‘zgartirish kiritadi.
ADD CONSTRAINT – yangi constraint (cheklov) qo‘shadi.
UNIQUE (ProductName) – ProductName ustunida takroriy qiymatlarga yo‘l qo‘ymaydi.
unique_product_name – constraint nomi (o‘zingiz xohlagan nomni berishingiz mumkin).
✅ Natija:
Endi Products jadvaliga yangi mahsulot qo‘shishda ProductName takrorlanmasligi kerak, aks holda xatolik yuz beradi.
Agar ProductName ustunida allaqachon takroriy qiymatlar bo‘lsa, bu buyruq bajarilmaydi — avval ularni aniqlab tozalash kerak bo‘ladi.
7. Write a comment in a SQL query explaining its purpose.
  💡 SQL ning asosiy maqsadi nima?
SQL (Structured Query Language) — bu ma'lumotlar bazalari bilan ishlash uchun yaratilgan maxsus dasturlash tili. Uning asosiy maqsadi:
🎯 Ma'lumotlar bazasini boshqarish
SQL yordamida siz:
Ma'lumot yaratish (CREATE)
Yangi jadval, baza yoki ustunlar yaratish.
Misol: CREATE TABLE users (...);
Ma'lumot qo‘shish (INSERT)
Jadvalga yangi ma’lumot kiritish.
Misol: INSERT INTO users (name, age) VALUES ('Ali', 25);
Ma'lumotni o‘qish (SELECT)
Jadvaldagi kerakli ma’lumotlarni olish.
Misol: SELECT * FROM users;
Ma'lumotni yangilash (UPDATE)
Mavjud ma’lumotlarni o‘zgartirish.
Misol: UPDATE users SET age = 26 WHERE name = 'Ali';
Ma'lumotni o‘chirish (DELETE)
Keraksiz ma’lumotlarni o‘chirish.
Misol: DELETE FROM users WHERE age < 18;
Cheklovlar o‘rnatish (CONSTRAINTS)
Masalan, PRIMARY KEY, FOREIGN KEY, UNIQUE, NOT NULL orqali ma'lumotlarning to‘g‘riligini ta'minlash.
✅ Umumiy maqsadi:
SQL — bu ma’lumotlarni yaratish, saqlash, yangilash, o‘chirish va izlash orqali ularni boshqarish uchun vosita.

8. Create a table Categories with a CategoryID as PRIMARY KEY and a CategoryName as UNIQUE.
9. Explain the purpose of the IDENTITY column in SQL Server.
  🔎 Purpose of the IDENTITY Column in SQL Server
In SQL Server, the IDENTITY column is used to automatically generate unique numeric values for each row inserted into a table — typically used for primary keys.
✅ Main Purpose:
To automatically assign a unique, incremental number to each row in a table — without manual input.
📌 Key Features:
FeatureDescriptionAuto-incrementSQL Server generates the value automatically when a new row is added.UniquenessEnsures each row gets a unique number (unless manually overridden).No Need to Insert ValueYou don't insert values into the column manually — it's done automatically. 
🧱 Syntax:
CREATE TABLE Users ( UserID INT IDENTITY(1,1) PRIMARY KEY, UserName VARCHAR(100) ); 
IDENTITY(1,1) means: 
1 = starting value
1 = increment step
So values will be: 1, 2, 3, 4, ...
✍️ Insert Example:
INSERT INTO Users (UserName) VALUES ('Ali'), ('Sara'); 
Result: | UserID | UserName | |--------|----------| | 1 | Ali | | 2 | Sara |
🛑 Notes:
An IDENTITY column can’t be updated directly (without turning off identity insert).
To insert values manually, you need to turn it ON/OFF explicitly: SET IDENTITY_INSERT Users ON; 
🎯 Common Use Cases:
Primary key columns (e.g., UserID, OrderID, InvoiceNumber)
Surrogate keys (when no natural unique value exists)
🧠 Summary:

The IDENTITY column in SQL Server automates the generation of unique identifiers, making it ideal for primary keys and improving data integrity and simplicity in insert operations.
Let me know if you'd like to see how to reset or reseed identity values too!
8. Add CategoryID column to the Products table.
9. Create a table Categories with a CategoryID as PRIMARY KEY and a CategoryName as UNIQUE.
10. Explain the purpose of the IDENTITY column in SQL Server.

________________________________________

## 🟠 Medium-Level Tasks (10)
10. Use BULK INSERT to import data from a text file into the Products table.
11. Create a FOREIGN KEY in the Products table that references the Categories table.
12. Explain the differences between PRIMARY KEY and UNIQUE KEY.
🧠 Summary:
✅ PRIMARY KEY = Main unique identifier (no duplicates, no NULLs)
✅ UNIQUE KEY = Ensures uniqueness, but allows NULL (and not limited to one per table)
Let me know if you'd like to see how to define composite keys or use both in the same table!
13. Add a CHECK constraint to the Products table ensuring Price > 0.
14. Modify the Products table to add a column Stock (INT, NOT NULL).
15. Use the ISNULL function to replace NULL values in Price column with a 0.
16. Describe the purpose and usage of FOREIGN KEY constraints in SQL Server.
11. Use BULK INSERT to import data from a text file into the Products table.
12. Create a FOREIGN KEY in the Products table that references the Categories table.
13. Explain the differences between PRIMARY KEY and UNIQUE KEY.
14. Add a CHECK constraint to the Products table ensuring Price > 0.
15. Modify the Products table to add a column Stock (INT, NOT NULL).
16. Use the ISNULL function to replace NULL values in Price column with a 0.
17. Describe the purpose and usage of FOREIGN KEY constraints in SQL Server.

________________________________________

## 🔴 Hard-Level Tasks (10)
17. Write a script to create a Customers table with a CHECK constraint ensuring Age >= 18.
18. Create a table with an IDENTITY column starting at 100 and incrementing by 10.
19. Write a query to create a composite PRIMARY KEY in a new table OrderDetails.
20. Explain the use of COALESCE and ISNULL functions for handling NULL values.
21. Create a table Employees with both PRIMARY KEY on EmpID and UNIQUE KEY on Email.
22. Write a query to create a FOREIGN KEY with ON DELETE CASCADE and ON UPDATE CASCADE options.
18. Write a script to create a Customers table with a CHECK constraint ensuring Age >= 18.
19. Create a table with an IDENTITY column starting at 100 and incrementing by 10.
20. Write a query to create a composite PRIMARY KEY in a new table OrderDetails.
21. Explain the use of COALESCE and ISNULL functions for handling NULL values.
22. Create a table Employees with both PRIMARY KEY on EmpID and UNIQUE KEY on Email.
23. Write a query to create a FOREIGN KEY with ON DELETE CASCADE and ON UPDATE CASCADE options.
