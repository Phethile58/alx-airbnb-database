-- INNER JOIN: Retrieve all bookings and the respective users who made those bookings
SELECT 
    b.id AS booking_id,
    b.property_id,
    b.start_date,
    b.end_date,
    u.id AS user_id,
    u.name AS user_name,
    u.email AS user_email
FROM Booking b
INNER JOIN User u ON b.user_id = u.id;

-- LEFT JOIN: Retrieve all properties and their reviews, including properties with no reviews
SELECT 
    p.id AS property_id,
    p.title AS property_title,
    r.id AS review_id,
    r.rating,
    r.comment
FROM Property p
LEFT JOIN Review r ON p.id = r.property_id
ORDER BY p.id, r.id;

-- FULL OUTER JOIN: Retrieve all users and all bookings
-- (MySQL does not support FULL OUTER JOIN directly, so we simulate it using UNION)
SELECT 
    u.id AS user_id,
    u.name AS user_name,
    b.id AS booking_id,
    b.property_id,
    b.start_date,
    b.end_date
FROM User u
LEFT JOIN Booking b ON u.id = b.user_id
UNION
SELECT 
    u.id AS user_id,
    u.name AS user_name,
    b.id AS booking_id,
    b.property_id,
    b.start_date,
    b.end_date
FROM User u
RIGHT JOIN Booking b ON u.id = b.user_id
ORDER BY user_id, booking_id;
