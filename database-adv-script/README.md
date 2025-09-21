SELECT p.id, p.title, r.id, r.rating, r.comment
FROM Property p
LEFT JOIN Review r ON p.id = r.property_id;
SELECT p.id, p.title, r.id, r.rating, r.comment
FROM Property p
LEFT JOIN Review r ON p.id = r.property_id;
# Advanced SQL Joins – Airbnb Database

## Objective
The goal of this task is to **master SQL joins** by writing complex queries using INNER JOIN, LEFT JOIN, and FULL OUTER JOIN.

---

## Queries Implemented

### 1. INNER JOIN
Retrieve all bookings and the respective users who made those bookings.
```sql
SELECT b.id, b.property_id, b.start_date, b.end_date, u.id, u.name, u.email
FROM Booking b
INNER JOIN User u ON b.user_id = u.id;
SELECT p.id, p.title, r.id, r.rating, r.comment
FROM Property p
LEFT JOIN Review r ON p.id = r.property_id;
-- MySQL simulation using UNION
SELECT u.id, u.name, b.id, b.property_id, b.start_date, b.end_date
FROM User u
LEFT JOIN Booking b ON u.id = b.user_id
UNION
SELECT u.id, u.name, b.id, b.property_id, b.start_date, b.end_date
FROM User u
RIGHT JOIN Booking b ON u.id = b.user_id;
