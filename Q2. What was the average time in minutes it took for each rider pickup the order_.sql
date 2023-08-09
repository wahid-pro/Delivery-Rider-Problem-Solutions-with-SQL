select rider_id, round(avg(timestampdiff(minute,order_time, pickup_time)),1) as AvgTime

from rider_orders

inner join customer_orders

on customer_orders.order_id = rider_orders.order_id

where distance != 0

group by rider_id

order by AvgTime;