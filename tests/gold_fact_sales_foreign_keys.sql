SELECT *
FROM {{ ref('fact_sales') }} f
LEFT JOIN {{ ref('dim_customers') }} c ON f.customer_key = c.customer_key
LEFT JOIN {{ ref('dim_products') }} p ON f.product_key = p.product_key
WHERE c.customer_key IS NULL OR p.product_key IS NULL