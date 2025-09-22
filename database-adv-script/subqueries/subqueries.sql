-- Non-correlated subquery: Find all properties where average rating > 4.0
SELECT p.id, p.name, p.location
FROM Property p
WHERE p.id IN (
    SELECT r.property_id
    FROM Review r
    GROUP BY r.property_id
    HAVING AVG(r.rating) > 4.0
);

-- Correlated subquery: Find users who made more than 3 bookings
SELECT u.id, u.name, u.email
FROM User u
WHERE (
    SELECT COUNT(*)
    FROM Booking b
    WHERE b.user_id = u.id
) > 3;
