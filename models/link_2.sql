{{
    config(
        materialized='incremental',
		unique_key='id',
		incremental_strategy='delete+insert',
    )
}}

select
    *
from {{ source('dbt_source', 'raw_links_2') }} 

{% if is_incremental() %}

  -- this filter will only be applied on an incremental run
  where id> (select max(id) from {{ this }})

{% endif %}
