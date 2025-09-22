
---

### 📂 `database-adv-script/aggregations_and_window_functions/README.md`
```markdown
# SQL Aggregations and Window Functions

This directory contains SQL scripts that demonstrate the use of **aggregation functions** and **window functions** in the Airbnb database project.

## Queries

### 1. Total Number of Bookings per User (Aggregation)
```sql
SELECT u.id, u.name, COUNT(b.id) AS total_bookings
FROM User u
LEFT JOIN Booking b ON u.id = b.user_id
GROUP BY u.id, u.name;
SELECT p.id, p.title, COUNT(b.id) AS total_bookings,
       RANK() OVER (ORDER BY COUNT(b.id) DESC) AS rank_position
FROM Property p
LEFT JOIN Booking b ON p.id = b.property_id
GROUP BY p.id, p.title;
