select
    id as order_id,
    user_id as customer_id,
    order_date,
    status

from  {{ source('dbt_source', 'raw_orders') }} --`dbt_test_project`.dbt_test_project.orders