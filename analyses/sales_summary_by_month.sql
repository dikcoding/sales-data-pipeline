SELECT
    DATE_TRUNC('month', order_date) AS sales_month,
    COUNT(order_number) AS total_orders,
    SUM(quantity) AS total_quantity,
    SUM(sales_amount) AS total_revenue
FROM AIRBNB.DEV_DATAWAREHOUSE.fact_sales
GROUP BY 1
ORDER BY 1