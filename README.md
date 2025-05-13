# wk-8-LoriBrian

# 📚 Library Management System

## 📌 Project Title
Library Management System – MySQL-Based Relational Database

## 🧾 Description
This project is a complete database design and implementation of a **Library Management System** built using **MySQL**. It simulates real-world operations such as managing books, tracking borrow/return activities, and maintaining member and author records.

The database features:
- Well-structured tables with primary and foreign key constraints.
- One-to-many and many-to-many relationships.
- Sample table definitions with comments for clarity.
- A scalable schema that can support further extensions (e.g., fines, book categories, staff roles).

## ⚙️ How to Run / Setup the Project

To set up and run this project:

1. **Install MySQL Server** (if not already installed)
   - Download from: https://dev.mysql.com/downloads/mysql/

2. **Import the SQL File**
   - Open your MySQL client (e.g., MySQL Workbench, phpMyAdmin, or command-line interface).
   - Create a new database (e.g., `library_db`).
   - Run the provided `.sql` file:
     ```sql
     SOURCE path/to/your/project.sql;
     ```

3. **Review Schema**
   - After importing, verify tables using:
     ```sql
     SHOW TABLES;
     ```

4. **(Optional)**: Add test data for simulation or build an app interface on top of this schema.

## 🗺️ Entity Relationship Diagram (ERD)
Here's the ERD for the Library Management System:  
[Insert Screenshot or URL to ERD diagram]

---

🛠️ Feel free to fork this repo and build your own version with additional features like staff logins, reservation systems, or overdue fine calculations.

