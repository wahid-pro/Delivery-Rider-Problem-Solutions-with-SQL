SELECT c.item_id,

c.category_type,

c.category_name,

COUNT(ro.cancellation) AS cancelled_orders,

SUM(ro.cancellation) AS total_orders,

SUM(CASE WHEN ro.cancellation = ‘marchent Cancellation’ OR ro.cancellation = ‘Customer Cancellation’ THEN 1 ELSE 0 END) AS cancelled_orders,

(SUM(CASE WHEN ro.cancellation = ‘marchent Cancellation’ OR ro.cancellation = ‘Customer Cancellation’ THEN 1 ELSE 0 END) / COUNT(ro.cancellation))*100 AS cancellation_rate

FROM category c

JOIN customer_orders co ON c.item_id = co.item_id

JOIN rider_orders ro ON co.order_id = ro.order_id

GROUP BY c.item_id, c.category_type, c.category_name

ORDER BY cancellation_rate DESC;