with cte as(

select rider_id, sum(case

when distance != 0 then 1

else 0

end) as percsucc, count(order_id) as TotalOrders

from rider_orders

group by rider_id)

select rider_id,round((percsucc/TotalOrders)*100) as Successfulpercentage

from cte

order by rider_id;