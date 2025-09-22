-- Aggregation: Find the total number of bookings made by each user
SELECT u.id AS user_id, u.name AS user_name, COUNT(b.id) AS total_bookings
FROM User u
LEFT JOIN Booking b ON u.id = b.user_id
GROUP BY u.id, u.name
ORDER BY total_bookings DESC;

-- Window Function: Rank properties by total number of bookings
SELECT p.id AS property_id, p.name AS property_name, COUNT(b.id) AS total_bookings,
       RANK() OVER (ORDER BY COUNT(b.id) DESC) AS booking_rank
FROM Property p
LEFT JOIN Booking b ON p.id = b.property_id
GROUP BY p.id, p.name
ORDER BY booking_rank;

-- Window Function: Assign a unique row number to properties based on total bookings
SELECT p.id AS property_id, p.name AS property_name, COUNT(b.id) AS total_bookings,
       ROW_NUMBER() OVER (ORDER BY COUNT(b.id) DESC) AS booking_row_number
FROM Property p
LEFT JOIN Booking b ON p.id = b.property_id
GROUP BY p.id, p.name
ORDER BY booking_row_number;