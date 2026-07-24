-- 1. Total revenue generated

SELECT
  SUM(total_spend) AS total_revenue
FROM
  customer_data.customers;


-- 2. Revenue by country

SELECT
  country,
  SUM(total_spend) AS country_revenue
FROM
  customer_data.customers
GROUP BY
  country
ORDER BY
  country_revenue DESC;


-- 3. Top customers by spending

SELECT
  customer_id,
  name,
  total_spend,
  RANK() OVER(
    ORDER BY total_spend DESC
  ) AS customer_rank
FROM
  customer_data.customers;


-- 4. Average spending by country

SELECT
  country,
  AVG(total_spend) AS avg_spend
FROM
  customer_data.customers
GROUP BY
  country;


-- 5. Customers spending above average

SELECT
  *
FROM
  customer_data.customers
WHERE
  total_spend >
  (
    SELECT AVG(total_spend)
    FROM customer_data.customers
  );
