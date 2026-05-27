-- ============================================
-- ADVANCED BUSINESS QUESTIONS
-- ============================================

-- Which regions have high sales but poor profitability?

SELECT
    Region,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit,
    ROUND((SUM(Profit)/SUM(Sales))*100, 2) AS profit_margin
FROM superstore_sales
GROUP BY Region
ORDER BY total_sales DESC;

-- Which product categories should receive more investment?

SELECT
    Category,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit
FROM superstore_sales
GROUP BY Category
ORDER BY total_profit DESC;

-- Which products negatively impact profitability?

SELECT
    Product_Name,
    ROUND(SUM(Profit), 2) AS total_profit
FROM superstore_sales
GROUP BY Product_Name
HAVING SUM(Profit) < 0
ORDER BY total_profit ASC;

-- Which customer segments are most profitable?

SELECT
    Segment,
    ROUND(SUM(Profit), 2) AS total_profit
FROM superstore_sales
GROUP BY Segment
ORDER BY total_profit DESC;
