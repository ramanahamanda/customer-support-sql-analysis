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

- The dataset contains customer support tickets across several categories, priorities, regions, and support channels.
- High-priority tickets appear across Billing, Technical, and Account Access issues.
- There are 8 high priority tickets, only 3 of which are open.
- There are 2 resolved technical tickets from Canada.
- Resolution time ranges between 2 to 20 hours.
- Account Access tickets had the longest average resolution time at 11.67 hours, while General Inquiry tickets had the shortest at 7 hours.
- Billing satisfaction scores averaged at the lowest value, suggesting that the customer experience for billing inquiries may warrant further investigation. Account access, general inquiry and technical tickets also scored an average that is just under the benchmark of 4.5.
- Resolution Speed Classification: Used a CASE statement to segment customer support tickets into Fast (≤5 hours), Moderate (6–12 hours), Slow (>12 hours), and Not Resolved categories. This makes it easier to identify tickets experiencing longer resolution times.Technical and Billing tickets represent a large share of support volume.

- Ticket Priority Analysis: Used a CASE statement to classify tickets into Urgent, Standard, and Low Priority tiers based on their original priority level. I then counted the number of tickets in each tier to understand the distribution of support workload by urgency.
 The analysis shows the proportion of the support workload that requires urgent attention versus standard or low-priority handling. This can help support teams assess staffing needs and prioritize resources.

Customer Name Search: Used the LIKE operator with the % wildcard to identify customers whose names begin with the letter “M”, demonstrating pattern matching and text-based filtering in SQL.

Business question:

Which customers have names beginning with “M”?



| #  | Analysis                                  | GitHub description                                                                                                                                                                         |
| -- | ----------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| 1  | **Dataset Overview**                      | Retrieved a sample of customer support records to understand the dataset structure, including ticket categories, priorities, status, channels, resolution times, and satisfaction scores.  |
| 2  | **High-Priority Ticket Analysis**         | Filtered the dataset to identify high-priority support tickets, helping highlight customer issues requiring greater urgency and attention.                                                 |
| 3  | **Targeted Ticket Filtering**             | Applied multiple filtering conditions to identify resolved Technical tickets from Canada, demonstrating how SQL can isolate a specific customer-support segment for analysis.              |
| 4  | **Resolution Time Ranking**               | Ranked resolved customer support tickets from fastest to slowest resolution time to identify tickets that required the most time to resolve.                                               |
| 5  | **Ticket Volume by Category**             | Grouped tickets by issue category and calculated ticket volume to identify the most common types of customer support requests.                                                             |
| 6  | **Average Resolution Time**               | Calculated the average resolution time for each support category to identify which types of customer issues are resolved fastest and which require more time.                              |
| 7  | **Customer Satisfaction Analysis**        | Identified support categories with an average satisfaction score below 4.5, highlighting areas that may warrant further investigation and service improvement.                             |
| 8  | **Resolution Speed Classification**       | Used a `CASE` statement to classify tickets as Fast, Moderate, Slow, or Not Resolved based on resolution time, transforming numerical data into meaningful service-performance categories. |
| 9  | **Priority Distribution Analysis**        | Classified tickets into Urgent, Standard, and Low Priority tiers and counted tickets in each group to understand how the support workload is distributed by urgency.                       |
| 10 | **Customer Name Pattern Search**          | Used `LIKE` with the `%` wildcard to identify customers whose names begin with “M,” demonstrating text-based pattern matching in SQL.                                                      |
| 11 | **Email Pattern Search**                  | Used wildcard pattern matching to identify customers with `.com` email addresses, demonstrating SQL filtering based on text patterns.                                                      |
| 12 | **Category Keyword Search**               | Used wildcards to identify support categories containing the word “Account,” demonstrating flexible text searching when an exact value is not required.                                    |
| 13 | **Regional Customer Combination**         | Used `UNION` to combine customers from Canada and France into a single result set while removing duplicate records.                                                                        |
| 14 | **Priority Group Combination**            | Used `UNION` to combine High- and Low-Priority customers into one dataset while adding labels to distinguish the two customer groups.                                                      |
| 15 | **Support Category Performance Analysis** | Combined `COUNT`, `AVG`, `GROUP BY`, `HAVING`, and `ORDER BY` to identify high-volume support categories and compare their average resolution times and customer satisfaction scores.      |

SQL skill demonstrated: WHERE, LIKE, % wildcard, SELECT.
 
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
