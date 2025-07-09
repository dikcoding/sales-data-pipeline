{{ config(materialized='table') }}

SELECT
    cid,
    cntry
FROM {{ ref('LOC_A101') }}