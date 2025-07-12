{% snapshot cust_info_snapshot %}
  
{{
  config(
    target_schema='snapshot',
    unique_key='cst_id',
    strategy='check',
    check_cols=['cst_firstname', 'cst_lastname', 'cst_marital_status', 'cst_gndr']
  )
}}

SELECT * FROM {{ ref('bronze_crm_cust_info') }}

{% endsnapshot %}
