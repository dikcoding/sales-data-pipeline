{{ config(materialized='table') }}

SELECT
    cid,
    CAST(bdate AS DATE) AS bdate,
    gen
FROM {{ ref('CUST_AZ12') }}