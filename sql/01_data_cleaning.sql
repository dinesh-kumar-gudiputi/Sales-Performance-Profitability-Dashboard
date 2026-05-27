-- ============================================
-- DATA CLEANING
-- Sales Performance & Profitability Dashboard
-- ============================================

-- Preview dataset
SELECT *
FROM superstore_sales;

-- Check total records
SELECT COUNT(*)
FROM superstore_sales;

-- Check for NULL values
SELECT *
FROM superstore_sales
WHERE Sales IS NULL
   OR Profit IS NULL;

-- Check duplicate rows
SELECT Order_ID, COUNT(*)
FROM superstore_sales
GROUP BY Order_ID
HAVING COUNT(*) > 1;

-- Standardize category names
SELECT DISTINCT Category
FROM superstore_sales;

-- Convert order date
SELECT Order_Date
FROM superstore_sales;