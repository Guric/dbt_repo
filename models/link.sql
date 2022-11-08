{{
    config(
        materialized='incremental'
    )
}}

select
    *
from {{ source('dbt_source', 'raw_links') }} 

{% if is_incremental() %}

  -- this filter will only be applied on an incremental run
  where id> (select max(id) from {{ this }})

{% endif %}
