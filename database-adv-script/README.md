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
ORDER BY p.id, r.id;

-- MySQL simulation using UNION
SELECT u.id, u.name, b.id, b.property_id, b.start_date, b.end_date
FROM User u
LEFT JOIN Booking b ON u.id = b.user_id
UNION
SELECT u.id, u.name, b.id, b.property_id, b.start_date, b.end_date
FROM User u
RIGHT JOIN Booking b ON u.id = b.user_id;
ORDER BY u.id, b.id;

# Advanced SQL: Subqueries

This directory contains SQL scripts that demonstrate the use of both **correlated** and **non-correlated** subqueries in the Airbnb database project.

## Files
- **subqueries.sql**: Contains the SQL queries
- **README.md**: Documentation

## Queries

1. **Properties with Avg Rating > 4.0 (Non-correlated Subquery)**
   - Uses a subquery with `GROUP BY` and `HAVING` to filter properties based on reviews.
   - Ensures only properties with an average rating above 4.0 are retrieved.

2. **Users with More Than 3 Bookings (Correlated Subquery)**
   - Uses a correlated subquery with `COUNT(*)` to count bookings per user.
   - Returns only users who have made more than 3 bookings.

## Learning Objectives
- Understand the difference between correlated and non-correlated subqueries.
- Learn how to use subqueries for filtering and aggregation in relational databases.
