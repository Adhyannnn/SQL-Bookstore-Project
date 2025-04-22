
# 📚 Bookstore SQL Analysis Project

A complete MySQL-based data analysis project using real-world bookstore data. This project demonstrates the use of advanced SQL queries to generate meaningful insights from relational data involving books, customers, and orders.

## 🔧 Tools & Technologies
- MySQL Workbench
- SQL (DDL + DML)
- CSV Data Import (Books, Customers, Orders)

## 🧱 Database Schema

- **Books**: Details of books like title, author, genre, year, stock, price
- **Customers**: Customer personal and location information
- **Orders**: Orders placed by customers including date, book ID, quantity, and total amount


## 🔍 Key SQL Concepts Practiced

- `JOIN`, `INNER JOIN`, `LEFT JOIN`
- `GROUP BY`, `ORDER BY`, `HAVING`
- `Aggregate Functions`: `SUM()`, `COUNT()`, `ROUND()`
- Filtering with `WHERE`, `BETWEEN`, `LIMIT`

## 📈 Sample Business Queries

| # | Query | Description |
|---|-------|-------------|
| 1 | Retrieve all Fiction genre books | Filtering rows using WHERE |
| 2 | Top 5 most sold books | JOIN + ORDER BY + LIMIT |
| 3 | Total amount spent by each customer | Aggregate + JOIN + GROUP BY |
| 4 | Customers who only placed one order | Subquery practice |
| 5 | Genres with no sales | LEFT JOIN + IS NULL |

## 📊 Project Insights

- 📚 Total books sold per genre
- 💸 Total revenue generated
- 🧍‍♂️ Highest spending customers
- 🧠 Authors with the most sold books
- 🕵️‍♂️ Genres with no sales
- 📅 Monthly sales trends

## 🚀 How to Run

1. Open MySQL Workbench
2. Run `Schema.sql` to create tables
3. Import data via Data Import Wizard (`Books.csv`, `Customers.csv`, `Orders.csv`)
4. Run `Queries.sql` to explore data

---

## 📂 Files Included

| File | Description |
|------|-------------|
| `Schema.sql` | Table creation queries |
| `Queries.sql` | Business insights using SELECT |
| `README.md` | Project documentation (this file) |

---

## 👨‍💻 Author

- **Name**: [Adhyan]
- **GitHub**: [Adhyannnn](https://github.com/Adhyannnn)
