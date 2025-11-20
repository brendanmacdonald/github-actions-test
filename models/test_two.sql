-- models/fake_avg_premium_order.sql

WITH stg_main AS (
  SELECT *
  FROM {{ source('sales', 'orders') }}
),

main AS (
  SELECT *
  FROM stg_main
  WHERE customer_tier = 'Premium'
)

SELECT *
from main