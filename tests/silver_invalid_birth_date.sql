SELECT *
FROM {{ ref('erp_cust_az12') }}
WHERE bdate < '1924-01-01' OR bdate > CURRENT_DATE