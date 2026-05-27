-- ============================================
-- KPI QUERIES
-- ============================================

-- Revenue KPI
SELECT ROUND(SUM(Sales), 2) AS revenue
FROM superstore_sales;

-- Profit KPI
SELECT ROUND(SUM(Profit), 2) AS profit
FROM superstore_sales;

-- Profit Margin KPI
SELECT
    ROUND((SUM(Profit) / SUM(Sales)) * 100, 2)
    AS profit_margin_percentage
FROM superstore_sales;

-- Average Order Value
SELECT
    ROUND(SUM(Sales) / COUNT(DISTINCT Order_ID), 2)
    AS average_order_value
FROM superstore_sales;

-- Total Customers
SELECT COUNT(DISTINCT Customer_ID) AS total_customers
FROM superstore_sales;
