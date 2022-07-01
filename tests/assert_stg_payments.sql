with payments as(
    select * from {{ ref('stg_payments') }}
)

select
    order_id,
    sum(payment_amount) as total_amount
from payments
group by 1
having sum(payment_amount) < 0