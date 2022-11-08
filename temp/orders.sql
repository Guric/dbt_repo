select
  ...

from {{ source('dbt_source', 'raw_orders') }}

left join {{ source('dbt_source', 'raw_customers') }} using (customer_id)
