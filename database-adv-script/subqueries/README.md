
---

### 📂 `database-adv-script/subqueries/README.md`
```markdown
# Advanced SQL: Subqueries

This directory contains SQL scripts that demonstrate the use of both **correlated** and **non-correlated** subqueries in the Airbnb database project.

## Queries

### 1. Properties with Avg Rating > 4.0 (Non-correlated Subquery)
```sql
SELECT id, title
FROM Property
WHERE id IN (
    SELECT property_id
    FROM Review
    GROUP BY property_id
    HAVING AVG(rating) > 4.0
);
SELECT id, name, email
FROM User u
WHERE (
    SELECT COUNT(*)
    FROM Booking b
    WHERE b.user_id = u.id
) > 3;
