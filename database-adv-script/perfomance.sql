---------------------------------------------------------
-- Initial Complex Query
---------------------------------------------------------
-- Retrieve all bookings with user, property, and payment details
SELECT 
    b.id AS booking_id,
    u.id AS user_id,
    u.name AS user_name,
    u.email,
    p.id AS property_id,
    p.title AS property_title,
    p.location,
    pay.id AS payment_id,
    pay.amount,
    pay.status
FROM Booking b
JOIN User u ON b.user_id = u.id
JOIN Property p ON b.property_id = p.id
JOIN Payment pay ON b.id = pay.booking_id;

---------------------------------------------------------
-- Analyze Query Performance
---------------------------------------------------------
EXPLAIN ANALYZE
SELECT 
    b.id AS booking_id,
    u.id AS user_id,
    u.name AS user_name,
    u.email,
    p.id AS property_id,
    p.title AS property_title,
    p.location,
    pay.id AS payment_id,
    pay.amount,
    pay.status
FROM Booking b
JOIN User u ON b.user_id = u.id
JOIN Property p ON b.property_id = p.id
JOIN Payment pay ON b.id = pay.booking_id;

---------------------------------------------------------
-- Refactored Query
---------------------------------------------------------
-- Optimization: Only select the columns actually needed.
-- Example: If we don’t need user email or payment status in reports, remove them.
-- Also rely on existing indexes (user_id, property_id, booking_id).
SELECT 
    b.id AS booking_id,
    u.name AS user_name,
    p.title AS property_title,
    pay.amount
FROM Booking b
JOIN User u ON b.user_id = u.id
JOIN Property p ON b.property_id = p.id
JOIN Payment pay ON b.id = pay.booking_id;

[paste the SQL code above here]
