# 🍽️ Smart Canteen Analytics System (SQL Project)

A beginner-friendly yet unique **SQL-based database project** designed to manage canteen operations and analyze sales data efficiently.  
This project focuses purely on **database design and SQL queries**, making it ideal for learning and showcasing SQL fundamentals on GitHub.

---

## 📌 Project Overview

The **Smart Canteen Analytics System** manages:
- Student details
- Food items and categories
- Orders placed by students
- Order-wise food items
- Payment information
- Sales analytics using SQL queries

It demonstrates how a real-world system can be modeled using **relational databases**.

---

## 🧱 Database Entities

- **Students** – stores student information  
- **Food_Items** – stores menu items and prices  
- **Orders** – records orders placed by students  
- **Order_Items** – maps food items to orders  
- **Payments** – stores payment details for each order  

---

## 🔗 Relationships

- One student can place **multiple orders**
- One order can contain **multiple food items**
- One food item can appear in **multiple orders**
- Each order has **one payment**

All relationships are represented using **primary and foreign keys**.

---

## 📊 ER Diagram

The ER diagram visually represents entities and their relationships in the system.

📁 File: `ER_Diagram.png`

---
## 📂 Project Structure

```
Smart-Canteen-SQL-Project/
│
├── README.md
├── schema.sql
├── sample_data.sql
├── analytics_queries.sql
└── ER_Diagram.png```

---

## ⚙️ Technologies Used

- SQL (MySQL compatible)
- Relational Database Design
- ER Modeling

---

## ▶️ How to Run the Project

1. Create a database and run:
   ```sql
   schema.sql
2. Insert sample data:
   sample_data.sql
3. Execute analytical queries from:
   analytics_queries.sql
```
-By Soham Patil
