SELECT *
FROM {{ ref('silver_crm_sales_details') }}
WHERE sls_order_dt > sls_ship_dt 
   OR sls_order_dt > sls_due_dt
