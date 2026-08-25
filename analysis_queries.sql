-- CUSTOMER SUPPORT SQL PORTFOLIO PROJECT
-- Skills: SELECT, WHERE, ORDER BY, GROUP BY, HAVING, CASE, wildcards, UNION

-- 1. SELECT
SELECT *
FROM customer_support_tickets
LIMIT 10;

-- 2. WHERE
SELECT ticket_id, customer_name, category, priority, status
FROM customer_support_tickets
WHERE priority = 'High';

-- 3. WHERE with multiple conditions
SELECT *
FROM customer_support_tickets
WHERE category = 'Technical'
  AND status = 'Resolved'
  AND region = 'Canada';

-- 4. ORDER BY
SELECT ticket_id, customer_name, category, resolution_hours
FROM customer_support_tickets
WHERE resolution_hours IS NOT NULL
ORDER BY resolution_hours ASC;

-- 5. GROUP BY
SELECT category, COUNT(*) AS ticket_count
FROM customer_support_tickets
GROUP BY category
ORDER BY ticket_count DESC;

-- 6. GROUP BY with AVG
SELECT category, ROUND(AVG(resolution_hours), 2) AS avg_resolution_hours
FROM customer_support_tickets
WHERE resolution_hours IS NOT NULL
GROUP BY category
ORDER BY avg_resolution_hours ASC;

-- 7. HAVING
SELECT category, ROUND(AVG(satisfaction_score), 2) AS avg_satisfaction_score
FROM customer_support_tickets
WHERE satisfaction_score IS NOT NULL
GROUP BY category
HAVING AVG(satisfaction_score) < 4.5
ORDER BY avg_satisfaction_score ASC;

-- 8. CASE
SELECT ticket_id, customer_name, resolution_hours,
    CASE
        WHEN resolution_hours IS NULL THEN 'Not Resolved'
        WHEN resolution_hours <= 5 THEN 'Fast'
        WHEN resolution_hours <= 12 THEN 'Moderate'
        ELSE 'Slow'
    END AS resolution_speed
FROM customer_support_tickets
ORDER BY ticket_id;

-- 9. CASE with aggregation
SELECT
    CASE
        WHEN priority = 'High' THEN 'Urgent'
        WHEN priority = 'Medium' THEN 'Standard'
        ELSE 'Low Priority'
    END AS priority_tier,
    COUNT(*) AS ticket_count
FROM customer_support_tickets
GROUP BY
    CASE
        WHEN priority = 'High' THEN 'Urgent'
        WHEN priority = 'Medium' THEN 'Standard'
        ELSE 'Low Priority'
    END
ORDER BY ticket_count DESC;

-- 10. WILDCARDS
SELECT ticket_id, customer_name, email
FROM customer_support_tickets
WHERE customer_name LIKE 'M%';

-- 11. WILDCARDS
SELECT ticket_id, customer_name, email
FROM customer_support_tickets
WHERE email LIKE '%.com';

-- 12. WILDCARDS
SELECT *
FROM customer_support_tickets
WHERE category LIKE '%Account%';

-- 13. UNION
SELECT customer_name, region
FROM customer_support_tickets
WHERE region = 'Canada'
UNION
SELECT customer_name, region
FROM customer_support_tickets
WHERE region = 'France'
ORDER BY customer_name;

-- 14. UNION with labels
SELECT customer_name, 'High Priority' AS customer_group
FROM customer_support_tickets
WHERE priority = 'High'
UNION
SELECT customer_name, 'Low Priority' AS customer_group
FROM customer_support_tickets
WHERE priority = 'Low'
ORDER BY customer_name;

-- 15. BUSINESS INSIGHT QUERY
SELECT
    category,
    COUNT(*) AS total_tickets,
    ROUND(AVG(resolution_hours), 2) AS avg_resolution_hours,
    ROUND(AVG(satisfaction_score), 2) AS avg_satisfaction_score
FROM customer_support_tickets
GROUP BY category
HAVING COUNT(*) > 3
ORDER BY total_tickets DESC;
