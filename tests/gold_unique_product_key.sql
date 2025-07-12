SELECT product_key, COUNT(*) AS duplicate_count
FROM {{ ref('dim_products') }}
GROUP BY product_key
HAVING COUNT(*) > 1