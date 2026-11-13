# Data dictionary

Describes `datasets/cleaned/cleaned_sales_data.csv` (26 columns, 13,297 order lines). The raw file `datasets/raw/superstore_sales.csv` has the first 21 columns, the last 5 are added during cleaning.

One order (`order_id`) can have several lines, and each row is one order line.

## Columns in the raw file

| Column | Description |
| --- | --- |
| order_id | Order identifier |
| order_date | Date the order was placed |
| ship_date | Date the order was shipped |
| ship_mode | Shipping class, for example Standard Class |
| customer_name | Customer name |
| segment | Customer segment: Consumer, Corporate or Home Office |
| state | State or province of the delivery address |
| country | Country of the delivery address |
| market | Sales market: 7 values (US, EU, APAC, LATAM, EMEA, Africa, Canada) |
| region | Sales region: 13 values, finer than market |
| product_id | Product identifier |
| category | Product category: Furniture, Office Supplies or Technology |
| sub_category | Product sub-category within the category |
| product_name | Product name |
| sales | Sales amount of the order line |
| quantity | Units sold on the line |
| discount | Discount given as a fraction, 0.1 means 10% |
| profit | Profit of the order line, negative when the line lost money |
| shipping_cost | Shipping cost of the order line |
| order_priority | Priority class of the order |
| year | Order year as given in the source file |

## Columns added during cleaning

| Column | Description |
| --- | --- |
| profit_margin_percent | `profit / sales * 100` for the line |
| order_year | Year taken from `order_date` |
| order_month | Month number taken from `order_date` |
| order_month_name | Month name taken from `order_date` |
| shipping_days | Days between `order_date` and `ship_date` |

## Summary files

| File | Content |
| --- | --- |
| `category_profitability.csv` | Sales, profit and profit margin % per category |
| `regional_profitability.csv` | Sales, profit and profit margin % per region |
