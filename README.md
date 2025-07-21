# SQL-Practice-Labs
# 🧠 SQL Practice Labs – MySQL

This repository contains hands-on SQL practice tasks and database operations performed during NAVTTC training sessions and personal learning. The examples cover various database concepts such as DDL, DML, sequences, auto-increment, window functions, importing data from CSV, and more using **MySQL**.

---

## 📂 Contents

### ✅ 1. Employee Data & Roles
- Create employee and role tables
- Insert multiple records
- Use `SELECT`, `INSERT`, `ROW_NUMBER()`, `DISTINCT`, etc.
- Populate role table using `SELECT FROM`

### ✅ 2. Person Table with Auto-Increment
- Demonstrates use of `AUTO_INCREMENT`
- Attempts to simulate `SEQUENCE` behavior in MySQL

### ✅ 3. Customers Table
- Insert bulk records
- Practice data types like `DECIMAL`, `CHAR`, `INT`
- Basic table creation and constraints

### ✅ 4. Creating Tables From SELECT
- Use `CREATE TABLE AS SELECT`
- Use `SELECT ... INTO` to copy data conditionally

### ✅ 5. Importing CSV Data into MySQL
- Create table for Netflix Movies
- Use `LOAD DATA INFILE` to import a CSV file into MySQL

---

## 💡 Tools Used

- MySQL 8.x
- MySQL Workbench / phpMyAdmin
- CSV File Handling

---

## 🚀 How to Run

1. Use MySQL Workbench or any MySQL terminal.
2. Run each SQL command block inside a valid database.
3. For CSV import, make sure the file path is correct and permissions are allowed.

---

## 📌 Notes

- The `CREATE SEQUENCE` syntax is included for comparison, although **MySQL doesn't support SEQUENCE** like Oracle/PostgreSQL — instead, `AUTO_INCREMENT` is used.
- Use of `ROW_NUMBER()` and variables like `@rownum` is shown for generating ranks or ordered results.

---

## 📁 File Organization Suggestion

You can split these SQL blocks into multiple `.sql` files, like:

- `employees.sql`
- `persons.sql`
- `customers.sql`
- `netflix_import.sql`

...or keep it all in a single file like `sql_practice_labs.sql`.

---

## 👩‍💻 Author

Sidra Bibi  
SQL & Data Science Learner  
Sir Syed University of Engineering & Technology

---
