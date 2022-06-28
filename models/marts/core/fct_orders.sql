with orders as (    
    select * from {{ ref('stg_orders') }}
),

payments as (
    select * from {{ ref('stg_payments') }} where payment_status = 'success'
)



select
    orders.order_id,
    orders.customer_id,
    orders.order_date,
    coalesce(sum(payments.payment_amount), 0) as amount

from orders
    left join payments using (order_id)

group by 1, 2, 3