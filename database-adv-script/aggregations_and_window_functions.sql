-- Query 1: Total number of bookings made by each user
SELECT u.id AS user_id,
       u.name AS user_name,
       COUNT(b.id) AS total_bookings
FROM User u
LEFT JOIN Booking b ON u.id = b.user_id
GROUP BY u.id, u.name;

-- Query 2: Rank properties based on total bookings
SELECT p.id AS property_id,
       p.title AS property_title,
       COUNT(b.id) AS total_bookings,
       RANK() OVER (ORDER BY COUNT(b.id) DESC) AS rank_position
FROM Property p
LEFT JOIN Booking b ON p.id = b.property_id
GROUP BY p.id, p.title;
