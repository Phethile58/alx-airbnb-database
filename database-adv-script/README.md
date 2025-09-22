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
