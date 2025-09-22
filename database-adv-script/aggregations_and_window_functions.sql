-- Aggregation:
-- Find the total number of bookings made by each user
SELECT 
    u.id AS user_id,
    u.name AS user_name,
    COUNT(b.id) AS total_bookings
FROM User u
LEFT JOIN Booking b ON u.id = b.user_id
GROUP BY u.id, u.name
ORDER BY total_bookings DESC;

-- Window Function:
-- Rank properties based on the total number of bookings they have received
SELECT 
    p.id AS property_id,
    p.title AS property_title,
    COUNT(b.id) AS total_bookings,
    RANK() OVER (ORDER BY COUNT(b.id) DESC) AS booking_rank,
    ROW_NUMBER() OVER (ORDER BY COUNT(b.id) DESC) AS booking_row_number
FROM Property p
LEFT JOIN Booking b ON p.id = b.property_id
GROUP BY p.id, p.title
ORDER BY booking_rank;
