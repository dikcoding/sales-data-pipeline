{{ config(materialized='table') }}

SELECT
    CAST(cst_id AS INT)              AS cst_id,
    cst_key,
    cst_firstname,
    cst_lastname,
    cst_marital_status,
    cst_gndr,
    CAST(cst_create_date AS DATE)    AS cst_create_date
FROM {{ ref('cust_info') }}