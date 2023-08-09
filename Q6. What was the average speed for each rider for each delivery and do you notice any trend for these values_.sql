SELECT rider_id,order_id,

distance AS distance_km,

ROUND(duration / 60, 2) AS duration_hr,

ROUND(distance * 60 / duration, 2) AS average_speed

FROM rider_orders

WHERE delivered <> ‘’

ORDER BY rider_id,order_id;