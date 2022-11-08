select
    id as customer_id,
    first_name,
    last_name

from  {{ source('dbt_source', 'raw_customers') }}  --`dbt_test_project`.dbt_test_project.customers