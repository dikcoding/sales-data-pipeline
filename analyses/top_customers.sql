SELECT
    dc.customer_key,
    COUNT(fs.order_number) AS total_orders,
    SUM(fs.sales_amount) AS total_spent
FROM AIRBNB.DEV_DATAWAREHOUSE.fact_sales fs
JOIN AIRBNB.DEV_DATAWAREHOUSE.dim_customers dc
    ON fs.customer_key = dc.customer_key
GROUP BY dc.customer_key
ORDER BY total_spent DESC
LIMIT 10

