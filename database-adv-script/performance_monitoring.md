# Performance Monitoring Report

## Objective
Continuously monitor and refine database performance by analyzing query execution plans and making schema adjustments.

---

## Step 1: Monitoring Queries

We used `EXPLAIN ANALYZE` to monitor query execution and detect inefficiencies.

### Query 1: Get all bookings with user details
```sql
EXPLAIN ANALYZE
SELECT b.id, b.start_date, b.end_date, u.id, u.name, u.email
FROM Booking b
JOIN User u ON b.user_id = u.id;

EXPLAIN ANALYZE
SELECT p.id, p.title, r.rating, r.comment
FROM Property p
LEFT JOIN Review r ON p.id = r.property_id
WHERE p.city = 'Cape Town';
CREATE INDEX idx_booking_user ON Booking(user_id);
CREATE INDEX idx_property_city ON Property(city);
CREATE INDEX idx_review_property ON Review(property_id);

