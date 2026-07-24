-- Staging model for customer data

SELECT

    customer_id,

    name,

    country,

    signup_date,

    total_spend

FROM

    raw.customers
