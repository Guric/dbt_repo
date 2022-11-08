
{{ config(materialized='table') }}

with customers as (

    select
        id as customer_id,
        first_name,
        last_name

    from  {{ source('dbt_source', 'raw_customers') }}

),


final as (

    select 1,*
    from customers

)

select * from final
