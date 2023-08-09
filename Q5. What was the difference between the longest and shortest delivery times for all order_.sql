SELECT MIN(duration) minimum_duration,

MAX(duration) AS maximum_duration,

MAX(duration) — MIN(duration) AS maximum_difference

FROM rider_orders;