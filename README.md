# Sales Trend Analysis Using SQL Aggregations

## Project Overview

This project performs **sales trend analysis using SQL aggregations** to understand monthly revenue and order volume.

The analysis uses an online sales dataset containing order information, order dates, product details, and transaction amounts. SQL aggregation functions are used to identify monthly and yearly sales trends and compare business performance between 2024 and 2025.

---

## Objective

The main objectives of this project are:

* Analyze **monthly revenue**
* Analyze **monthly order volume**
* Compare yearly sales performance
* Calculate revenue growth between years
* Calculate order volume growth between years
* Identify the highest and lowest revenue months
* Identify the highest and lowest order-volume months
* Practice SQL aggregation and date functions

---

## Dataset

The dataset used in this project is an online sales dataset containing **1,001 orders**.

### Dataset Columns

| Column         | Description                    |
| -------------- | ------------------------------ |
| `order_id`     | Unique order identifier        |
| `order_date`   | Date when the order was placed |
| `amount`       | Order transaction amount       |
| `product_id`   | Unique product identifier      |
| `product_name` | Name of the product            |

### Dataset Period

**January 2024 – December 2025**

---

## Tools & Technologies

* **MySQL**
* **MySQL Workbench**
* **SQL**
* **GitHub**
* CSV Dataset

---

## SQL Concepts Used

The following SQL concepts were used in this project:

* `SELECT`
* `SUM()`
* `COUNT()`
* `COUNT(DISTINCT)`
* `YEAR()`
* `MONTH()`
* `MONTHNAME()`
* `GROUP BY`
* `ORDER BY`
* `CASE WHEN`
* `ROUND()`
* `LIMIT`
* Aggregate Functions
* Date Functions
* Conditional Aggregation

---

## Analysis Performed

### 1. Monthly Revenue and Order Volume

Monthly revenue was calculated using:

```sql
SUM(amount)
```

Monthly order volume was calculated using:

```sql
COUNT(DISTINCT order_id)
```

The data was grouped by year and month.

---

### 2. Yearly Revenue and Order Volume

The project compares total revenue and total orders for:

* 2024
* 2025

### Results

| Year | Total Revenue | Total Orders |
| ---- | ------------: | -----------: |
| 2024 | ₹63,09,836.46 |          508 |
| 2025 | ₹65,28,509.46 |          493 |

---

### 3. Revenue Growth

Revenue growth from 2024 to 2025 was calculated using conditional aggregation.

**Revenue Growth: 3.47%**

This indicates that total revenue increased in 2025 compared with 2024.

---

### 4. Order Volume Growth

The order volume comparison showed:

**Order Volume Growth: -2.95%**

This means the number of orders decreased slightly in 2025 compared with 2024.

---

##  Key Insights

### Highest Revenue Month

**May 2024**

Revenue:

**₹7,37,433.98**

---

### Lowest Revenue Month

**May 2025**

Revenue:

**₹3,15,678.09**

---

### Highest Order Volume

**May 2024**

Orders:

**52**

---

### Lowest Order Volume

**May 2025**

Orders:

**32**

---

## Monthly Sales Trend

The SQL analysis generated monthly revenue and order volume for **24 months**.

| Year | Month     |      Revenue | Orders |
| ---- | --------- | -----------: | -----: |
| 2024 | January   | ₹4,21,951.63 |     33 |
| 2024 | February  | ₹4,20,968.38 |     35 |
| 2024 | March     | ₹3,48,670.33 |     45 |
| 2024 | April     | ₹4,81,168.26 |     44 |
| 2024 | May       | ₹7,37,433.98 |     52 |
| 2024 | June      | ₹5,80,226.83 |     37 |
| 2024 | July      | ₹4,75,824.00 |     41 |
| 2024 | August    | ₹5,09,408.12 |     42 |
| 2024 | September | ₹6,14,741.86 |     42 |
| 2024 | October   | ₹6,03,955.04 |     45 |
| 2024 | November  | ₹4,64,895.98 |     50 |
| 2024 | December  | ₹6,50,592.05 |     42 |
| 2025 | January   | ₹5,33,895.42 |     42 |
| 2025 | February  | ₹6,36,019.51 |     36 |
| 2025 | March     | ₹6,17,543.45 |     37 |
| 2025 | April     | ₹5,82,992.51 |     46 |
| 2025 | May       | ₹3,15,678.09 |     32 |
| 2025 | June      | ₹5,52,800.61 |     39 |
| 2025 | July      | ₹4,07,686.00 |     40 |
| 2025 | August    | ₹5,61,900.62 |     45 |
| 2025 | September | ₹4,38,028.77 |     40 |
| 2025 | October   | ₹4,65,503.87 |     37 |
| 2025 | November  | ₹7,35,955.84 |     50 |
| 2025 | December  | ₹6,80,504.77 |     49 |

---

## Business Insights

Based on the analysis:

1. **Revenue increased by 3.47% in 2025** compared with 2024.
2. **Order volume decreased by 2.95%** in 2025.
3. Despite fewer orders, overall revenue increased, suggesting that the **average revenue per order was higher in 2025**.
4. **May 2024** was the strongest month by both revenue and order volume.
5. **May 2025** was the weakest month for both revenue and order volume.
6. **November 2025** was another strong month, generating ₹7,35,955.84 in revenue with 50 orders.
7. Monthly sales show noticeable fluctuations, indicating opportunities for further seasonal analysis.

---

## Project Structure

```text
Sales-Trend-Analysis-Using-SQL-Aggregations/
│
├── sales_trend_analysis.sql
├── online_sales_data.csv
└── README.md
```

---

## How to Run the Project

### Step 1: Install MySQL

Install **MySQL Server** and **MySQL Workbench**.

### Step 2: Create/Open the Database

Open MySQL Workbench and select the database used for the project.

```sql
USE online_sales;
```

### Step 3: Import the Dataset

Import:

```text
online_sales_data.csv
```

into the `orders` table.

### Step 4: Run the SQL Script

Open:

```text
sales_trend_analysis.sql
```

Execute the queries section by section.

### Step 5: Review the Results

The script generates:

* Monthly revenue
* Monthly order volume
* Yearly revenue
* Yearly order volume
* Revenue growth
* Order volume growth
* Highest revenue month
* Lowest revenue month
* Highest order-volume month
* Lowest order-volume month

---

## Deliverables

This project contains:

* ✅ SQL analysis script
* ✅ Online sales dataset
* ✅ Monthly sales trend analysis
* ✅ Yearly performance comparison
* ✅ Revenue growth analysis
* ✅ Order volume growth analysis
* ✅ Key business insights
* ✅ Results table

---

## Conclusion

This project demonstrates how SQL aggregation and date functions can be used to analyze sales performance over time.

The analysis shows that **revenue grew by 3.47% in 2025**, while **order volume decreased by 2.95%**. Monthly analysis also helped identify the strongest and weakest sales periods.

This project demonstrates practical skills in **SQL, data aggregation, date-based analysis, business analysis, and extracting actionable insights from sales data**.
