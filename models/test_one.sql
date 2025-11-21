with stg_main as (
  SELECT customer_id, order_total
  from {{ source('sales', 'orders') }}
),

main as (
  select 
    SUM(a)::int    as new_name,
    b::INT         as NEW_name_2,
    NULL::string   as no_value
  from stg_main
  where customer_tier = 'Premium'
)

select *
from main