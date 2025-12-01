# 📚 SQL Project – Data Analysis

## 📌 Overview  
This project focuses on analyzing a real-world dataset using *SQL*.  
The goal is to clean the data, explore insights, and generate meaningful reports using different SQL queries.

## 🎯 Objectives  
- Understand database structure  
- Apply SQL queries (SELECT, JOIN, GROUP BY, HAVING, ORDER BY)  
- Perform data cleaning  
- Extract insights using analytical queries  
- Build a mini reporting dashboard using SQL results  

---


## 🛠 Tools & Technologies  
- MySQL / PostgreSQL / SQL Server  
- DBeaver / MySQL Workbench  
- CSV Dataset  

---

## 🧩 Project Structure  

├── dataset/
│   └── data.csv
├── queries/
│   ├── cleaning.sql
│   ├── analysis.sql
│   └── reporting.sql
└── README.md


---

## 🔍 SQL Tasks Included

### ✔ 1. Data Cleaning Queries
sql
SELECT * 
FROM table_name
WHERE column IS NOT NULL;


### ✔ 2. Exploratory Analysis
sql
SELECT category, COUNT(*)
FROM sales
GROUP BY category;


### ✔ 3. Joining Tables
sql
SELECT c.customer_name, o.order_amount
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id;


### ✔ 4. Advanced Queries
sql
SELECT product, SUM(amount) AS total_sales
FROM sales
GROUP BY product
HAVING SUM(amount) > 5000;


---
  
📧 *omnyaayman033@gmail.com*  
🔗 LinkedIn: (حطي لينك
