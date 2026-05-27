-- ============================================
-- PROFITABILITY ANALYSIS
-- ============================================

-- Total Profit
SELECT ROUND(SUM(Profit), 2) AS total_profit
FROM superstore_sales;

-- Profit by Region
SELECT
    Region,
    ROUND(SUM(Profit), 2) AS total_profit
FROM superstore_sales
GROUP BY Region
ORDER BY total_profit DESC;

-- Low Profit Products
SELECT
    Product_Name,
    ROUND(SUM(Profit), 2) AS total_profit
FROM superstore_sales
GROUP BY Product_Name
ORDER BY total_profit ASC
LIMIT 10;

-- High Sales but Low Profit Regions
SELECT
    Region,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit
FROM superstore_sales
GROUP BY Region
ORDER BY total_sales DESC;

-- Profit Margin by Category
SELECT
    Category,
    ROUND(SUM(Profit) / SUM(Sales) * 100, 2) AS profit_margin_percent
FROM superstore_sales
GROUP BY Category
ORDER BY profit_margin_percent DESC;
