-- Customer revenue analytics mart

SELECT

    customer_id,

    name,

    country,

    SUM(total_spend) AS total_revenue,

    COUNT(customer_id) AS customer_transactions

FROM

    {{ ref('stg_customers') }}

GROUP BY

    customer_id,

    name,

    country
