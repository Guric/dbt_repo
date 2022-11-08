with customers as (

    select
*

    from `dbt_test_project`.dbt_source.raw_customers

),

final as (

    select 2,*

    from customers

)

select * from final