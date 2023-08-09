SELECT * FROM demo;WITH cte AS (

SELECT c.order_id, COUNT(c.order_id) AS itemCount, ROUND(TIMESTAMPDIFF(MINUTE, c.order_time, delivered

)) AS Avgtime

FROM customer_orders AS c

INNER JOIN rider_orders AS r ON c.order_id = r.order_id

WHERE distance != 0

GROUP BY c.order_id, c.order_time, delivered

)

SELECT itemCount, AVG(Avgtime) AS AverageTime

FROM cte

GROUP BY itemCount;