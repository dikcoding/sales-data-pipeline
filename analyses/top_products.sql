SELECT
    dp.product_key,
    COUNT(fs.order_number) AS total_orders,
    SUM(fs.quantity) AS total_quantity_sold,
    SUM(fs.sales_amount) AS revenue
FROM AIRBNB.DEV_DATAWAREHOUSE.fact_sales fs
JOIN AIRBNB.DEV_DATAWAREHOUSE.dim_products dp
    ON fs.product_key = dp.product_key
GROUP BY dp.product_key
ORDER BY revenue DESC
LIMIT 10