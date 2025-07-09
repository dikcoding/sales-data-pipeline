{{ config(materialized='table') }}

SELECT
    sls_ord_num,
    sls_prd_key,
    CAST(sls_cust_id AS INT)      AS sls_cust_id,
    CAST(sls_order_dt AS INT)     AS sls_order_dt,
    CAST(sls_ship_dt AS INT)      AS sls_ship_dt,
    CAST(sls_due_dt AS INT)       AS sls_due_dt,
    CAST(sls_sales AS INT)        AS sls_sales,
    CAST(sls_quantity AS INT)     AS sls_quantity,
    CAST(sls_price AS INT)        AS sls_price
FROM {{ ref('sales_details') }}