# Customer Support SQL Analysis

## Overview

This beginner SQL portfolio project analyzes a fictional customer support dataset to uncover patterns in ticket volume, priority, resolution time, customer satisfaction, and support channels.

## SQL Skills Demonstrated

- SELECT
- WHERE
- ORDER BY
- GROUP BY
- HAVING
- CASE
- Wildcards with LIKE
- UNION
- COUNT
- AVG
- ROUND
- Multiple conditions with AND
- NULL filtering

## Dataset

The dataset contains 20 fictional customer support tickets with fields including ticket ID, customer name, email, region, category, priority, status, channel, resolution time, and satisfaction score.

## Business Questions

1. Which tickets are high priority?
2. Which resolved tickets were handled fastest?
3. Which ticket categories are most common?
4. What is the average resolution time by category?
5. Which categories have lower customer satisfaction?
6. How can tickets be classified as fast, moderate, or slow?
7. Which customer names match specific search patterns?
8. How can customer groups from different regions be combined using UNION?
9. Which ticket categories have the highest volume and what are their service metrics?

## Project Files

- `customer_support_tickets.csv` — sample dataset
- `create_table.sql` — creates the SQLite table
- `analysis_queries.sql` — contains all SQL analysis queries
- `README.md` — project documentation

## How to Run in DB Browser for SQLite

1. Open DB Browser for SQLite.
2. Create a database named `customer_support.db`.
3. Open the **Execute SQL** tab and run `create_table.sql`.
4. Import `customer_support_tickets.csv` using **File → Import → Table from CSV file**.
5. Use the table name `customer_support_tickets`.
6. Open `analysis_queries.sql`.
7. Run the queries one at a time.

## Example Insights

- Technical and Billing tickets represent a large share of support volume.
- High-priority tickets tend to receive faster resolution.
- Some categories show lower satisfaction despite acceptable resolution times.
- CASE statements convert resolution times into useful service-level categories.
- GROUP BY and HAVING help identify high-volume ticket categories.

## Future Improvements

- Add JOIN queries using a separate customer table
- Add date-based trend analysis
- Add CTEs and window functions
- Analyze support agent performance
- Build a Power BI or Excel dashboard
