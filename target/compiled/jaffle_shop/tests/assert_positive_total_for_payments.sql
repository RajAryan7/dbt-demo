with 

payments as (
    select * from analytics.dbt_arout.stg_payments
)

select
    order_id,
    sum(amount) as total_amount
from analytics.dbt_arout.stg_payments
group by 1
having not(total_amount >= 0)