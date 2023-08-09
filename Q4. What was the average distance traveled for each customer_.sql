with cte as (

select c.customer_id, round(avg(r.distance),1) as AvgDistance

from customer_orders as c

inner join rider_orders as r

on c.order_id = r.order_id

where r.distance != 0

group by c.customer_id)

select * from cte;

Result: