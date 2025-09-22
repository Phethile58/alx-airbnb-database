# Indexing and Query Performance – Airbnb Database

## Objective
The goal of this task is to **improve query performance** by adding indexes to frequently used columns in the database.

---

## Indexes Implemented
- **User Table**
  - `email` → Optimizes login and search queries.
- **Booking Table**
  - `user_id` → Speeds up joins between `Booking` and `User`.
  - `property_id` → Speeds up joins between `Booking` and `Property`.
- **Property Table**
  - `title` → Improves text-based searches by property name.
  - `location` → Speeds up filtering by location.

---

## Performance Testing

### Without Indexes
Example query:
```sql
EXPLAIN ANALYZE
SELECT b.id, u.name, p.title
FROM Booking b
JOIN User u ON b.user_id = u.id
JOIN Property p ON b.property_id = p.id
WHERE u.email = 'test@example.com';
