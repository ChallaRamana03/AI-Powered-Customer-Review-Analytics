CREATE DATABASE customer_review_analytics;
USE customer_review_analytics;
SELECT COUNT(*) FROM customer_reviews_cleaned;
SHOW COLUMNS FROM customer_reviews_cleaned;
SELECT
COUNT(*) AS Total_Reviews,
ROUND(AVG(Rating),2) AS Avg_Rating,
ROUND(SUM(`Recommended IND`)*100.0/COUNT(*),2) AS Recommendation_Rate
FROM customer_reviews_cleaned;

SELECT
`Department Name`,
COUNT(*) AS Total_Reviews
FROM customer_reviews_cleaned
GROUP BY `Department Name`
ORDER BY Total_Reviews DESC;

SELECT
`Department Name`,
ROUND(AVG(Rating),2) AS Avg_Rating
FROM customer_reviews_cleaned
GROUP BY `Department Name`
ORDER BY Avg_Rating DESC;

SELECT
`Class Name`,
COUNT(*) AS Total_Reviews
FROM customer_reviews_cleaned
GROUP BY `Class Name`
ORDER BY Total_Reviews DESC
LIMIT 10;

SELECT
CASE
WHEN Age < 25 THEN 'Under 25'
WHEN Age BETWEEN 25 AND 34 THEN '25-34'
WHEN Age BETWEEN 35 AND 44 THEN '35-44'
WHEN Age BETWEEN 45 AND 54 THEN '45-54'
ELSE '55+'
END AS Age_Group,
COUNT(*) AS Total_Reviews
FROM customer_reviews_cleaned
GROUP BY Age_Group;

