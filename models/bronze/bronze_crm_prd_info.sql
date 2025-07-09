{{ config(materialized='table') }}

SELECT
    CAST(prd_id AS INT)                    AS prd_id,
    prd_key,
    prd_nm,
    CAST(prd_cost AS INT)                  AS prd_cost,
    prd_line,
    CAST(prd_start_dt AS TIMESTAMP)        AS prd_start_dt,
    CAST(prd_end_dt AS TIMESTAMP)          AS prd_end_dt
FROM {{ ref('prd_info') }}