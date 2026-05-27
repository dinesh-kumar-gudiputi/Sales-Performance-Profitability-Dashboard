-- ============================================
-- SALES ANALYSIS
-- ============================================

-- Total Sales
SELECT ROUND(SUM(Sales), 2) AS total_sales
FROM superstore_sales;

-- Total Orders
SELECT COUNT(DISTINCT Order_ID) AS total_orders
FROM superstore_sales;

-- Sales by Region
SELECT
    Region,
    ROUND(SUM(Sales), 2) AS total_sales
FROM superstore_sales
GROUP BY Region
ORDER BY total_sales DESC;

-- Sales by Category
SELECT
    Category,
    ROUND(SUM(Sales), 2) AS total_sales
FROM superstore_sales
GROUP BY Category
ORDER BY total_sales DESC;

-- Monthly Sales Trend
SELECT
    YEAR(Order_Date) AS order_year,
    MONTH(Order_Date) AS order_month,
    ROUND(SUM(Sales), 2) AS monthly_sales
FROM superstore_sales
GROUP BY YEAR(Order_Date), MONTH(Order_Date)
ORDER BY order_year, order_month;
