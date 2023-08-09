SELECT * FROM demo;SELECT week(registration_date) as ‘Week of registration’,

count(rider_id) as ‘Number of riders’

FROM delivery_rider.riders

GROUP BY 1;