SELECT customer_key, COUNT(*) AS duplicate_count
FROM {{ ref('dim_customers') }}
GROUP BY customer_key
HAVING COUNT(*) > 1