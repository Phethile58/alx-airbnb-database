-- Analyze the query with EXPLAIN
EXPLAIN
SELECT 
    b.id AS booking_id,
    b.start_date,
    b.end_date,
    u.id AS user_id,
    u.name AS user_name,
    u.email AS user_email,
    p.id AS property_id,
    p.title AS property_title,
    pay.id AS payment_id,
    pay.amount,
    pay.status
FROM Booking b
JOIN User u ON b.user_id = u.id
JOIN Property p ON b.property_id = p.id
JOIN Payment pay ON b.id = pay.booking_id
WHERE b.start_date IS NOT NULL AND pay.status = 'completed';
