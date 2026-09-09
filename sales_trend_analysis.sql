-- =====================================================
-- TASK 6: SALES TREND ANALYSIS USING SQL AGGREGATIONS
-- =====================================================

USE online_sales;


-- =====================================================
-- 1. DATA VERIFICATION
-- =====================================================

SELECT COUNT(*) AS total_rows
FROM orders;

SELECT
    MIN(order_date) AS first_order_date,
    MAX(order_date) AS last_order_date
FROM orders;

SELECT
    SUM(amount) AS total_revenue
FROM orders;


-- =====================================================
-- 2. MONTHLY REVENUE AND ORDER VOLUME
-- =====================================================

SELECT
    YEAR(order_date) AS year,
    MONTH(order_date) AS month_number,
    MONTHNAME(order_date) AS month_name,
    SUM(amount) AS monthly_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM orders
GROUP BY
    YEAR(order_date),
    MONTH(order_date),
    MONTHNAME(order_date)
ORDER BY
    year,
    month_number;


-- =====================================================
-- 3. YEARLY REVENUE AND ORDER VOLUME
-- =====================================================

SELECT
    YEAR(order_date) AS order_year,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders
FROM orders
GROUP BY YEAR(order_date)
ORDER BY order_year;


-- =====================================================
-- 4. REVENUE GROWTH (2025 VS 2024)
-- =====================================================

SELECT
    ROUND(
        (
            SUM(CASE
                WHEN YEAR(order_date) = 2025 THEN amount
                ELSE 0
            END)
            -
            SUM(CASE
                WHEN YEAR(order_date) = 2024 THEN amount
                ELSE 0
            END)
        )
        /
        SUM(CASE
            WHEN YEAR(order_date) = 2024 THEN amount
            ELSE 0
        END)
        * 100,
        2
    ) AS revenue_growth_percentage
FROM orders;


-- =====================================================
-- 5. ORDER VOLUME GROWTH (2025 VS 2024)
-- =====================================================

SELECT
    ROUND(
        (
            COUNT(DISTINCT CASE
                WHEN YEAR(order_date) = 2025 THEN order_id
            END)
            -
            COUNT(DISTINCT CASE
                WHEN YEAR(order_date) = 2024 THEN order_id
            END)
        )
        /
        COUNT(DISTINCT CASE
            WHEN YEAR(order_date) = 2024 THEN order_id
        END)
        * 100,
        2
    ) AS order_volume_growth_percentage
FROM orders;


-- =====================================================
-- 6. HIGHEST REVENUE MONTH
-- =====================================================

SELECT
    YEAR(order_date) AS order_year,
    MONTHNAME(order_date) AS month_name,
    SUM(amount) AS monthly_revenue
FROM orders
GROUP BY
    YEAR(order_date),
    MONTH(order_date),
    MONTHNAME(order_date)
ORDER BY monthly_revenue DESC
LIMIT 1;


-- =====================================================
-- 7. LOWEST REVENUE MONTH
-- =====================================================

SELECT
    YEAR(order_date) AS order_year,
    MONTHNAME(order_date) AS month_name,
    SUM(amount) AS monthly_revenue
FROM orders
GROUP BY
    YEAR(order_date),
    MONTH(order_date),
    MONTHNAME(order_date)
ORDER BY monthly_revenue ASC
LIMIT 1;


-- =====================================================
-- 8. HIGHEST ORDER VOLUME MONTH
-- =====================================================

SELECT
    YEAR(order_date) AS order_year,
    MONTHNAME(order_date) AS month_name,
    COUNT(DISTINCT order_id) AS order_volume
FROM orders
GROUP BY
    YEAR(order_date),
    MONTH(order_date),
    MONTHNAME(order_date)
ORDER BY order_volume DESC
LIMIT 1;


-- =====================================================
-- 9. LOWEST ORDER VOLUME MONTH
-- =====================================================

SELECT
    YEAR(order_date) AS order_year,
    MONTHNAME(order_date) AS month_name,
    COUNT(DISTINCT order_id) AS order_volume
FROM orders
GROUP BY
    YEAR(order_date),
    MONTH(order_date),
    MONTHNAME(order_date)
ORDER BY order_volume ASC
LIMIT 1;


-- =====================================================
-- 10. FINAL MONTHLY SALES TREND TABLE
-- =====================================================

SELECT
    YEAR(order_date) AS year,
    MONTH(order_date) AS month_number,
    MONTHNAME(order_date) AS month_name,
    ROUND(SUM(amount), 2) AS monthly_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM orders
GROUP BY
    YEAR(order_date),
    MONTH(order_date),
    MONTHNAME(order_date)
ORDER BY
    year,
    month_number;