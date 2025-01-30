with 

payments as (
    select * from {{ref('stg_stripe__payments')}}

)

select 
    oid,
    sum(amount) as total_amount
from payments
group by id
having total_amount < 0