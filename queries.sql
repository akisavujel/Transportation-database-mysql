-- 1. Total number of trips per route
-- Counts the number of trips associated with each route
SELECT r.route_id, r.city, COUNT(rt.trip_id) AS total_trips
FROM route r
JOIN route_trip rt ON r.route_id = rt.route_id
GROUP BY r.route_id, r.city;


-- 2. Trips departing from Pokhara
-- Lists trips that start from 'Pokhara' with their departure time and destination
SELECT t.trip_id, t.departure_time, r.destination
FROM trip t
JOIN route_trip rt ON t.trip_id = rt.trip_id
JOIN route r ON rt.route_id = r.route_id
WHERE r.city = 'Pokhara';


-- 3. Passengers whose names start with 'A' and their total trips
SELECT p.name, COUNT(tp.trip_id) AS total_trips
FROM passenger p
JOIN trip_passenger tp ON p.passenger_id = tp.passenger_id
WHERE p.name LIKE 'A%'
GROUP BY p.name;


-- 4. Passengers who traveled more than 2 trips
SELECT p.name, COUNT(tp.trip_id) AS trips
FROM passenger p
JOIN trip_passenger tp ON p.passenger_id = tp.passenger_id
GROUP BY p.name
HAVING COUNT(tp.trip_id) > 2;


-- 5. Ticket, passenger, and payment status
-- Shows which passengers have tickets and the payment status for their route
SELECT t.ticket_id, p.name, pay.payment_status
FROM ticket t
JOIN route_ticket rt ON t.ticket_id = rt.ticket_id
JOIN route_payment rp ON rt.route_id = rp.route_id
JOIN payment pay ON rp.payment_id = pay.payment_id
JOIN route_passenger rpa ON rpa.route_id = rt.route_id
JOIN passenger p ON p.passenger_id = rpa.passenger_id;


-- 6. Latest trip by departure time
SELECT *
FROM trip
ORDER BY departure_time DESC
LIMIT 1;


-- 7. Top 3 passengers with the most trips
SELECT p.name, COUNT(tp.trip_id) AS total_trips
FROM passenger p
JOIN trip_passenger tp ON p.passenger_id = tp.passenger_id
GROUP BY p.name
ORDER BY total_trips DESC
LIMIT 3;


-- 8. Passengers who paid more than average payment
SELECT p.name, SUM(pay.amount) AS total_paid
FROM passenger p
JOIN route_passenger rp ON p.passenger_id = rp.passenger_id
JOIN route_payment rpay ON rp.route_id = rpay.route_id
JOIN payment pay ON rpay.payment_id = pay.payment_id
GROUP BY p.name
HAVING SUM(pay.amount) > (SELECT AVG(amount) FROM payment);


-- 9. Revenue and number of trips per route
SELECT r.route_id, SUM(p.amount) AS revenue, COUNT(rt.trip_id) AS trips
FROM route r
JOIN route_payment rp ON r.route_id = rp.route_id
JOIN payment p ON rp.payment_id = p.payment_id
JOIN route_trip rt ON r.route_id = rt.route_id
GROUP BY r.route_id;


-- 10. Trips with less than 50% bus occupancy
SELECT t.trip_id, b.capacity, COUNT(tp.trip_passenger_id) AS booked
FROM trip t
JOIN route_trip rt ON t.trip_id = rt.trip_id
JOIN route_bus rb ON rt.route_id = rb.route_id
JOIN bus b ON rb.bus_id = b.bus_id
LEFT JOIN trip_passenger tp ON t.trip_id = tp.trip_id
GROUP BY t.trip_id, b.capacity
HAVING booked < b.capacity * 0.5;
