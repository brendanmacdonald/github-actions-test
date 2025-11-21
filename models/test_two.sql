
with stg_main as (
  select *
  from {{ source('sales', 'orders') }}
),

main as (
  selEct *
  from stg_main
  where customer_tier = 'premium'
)

select *
from main