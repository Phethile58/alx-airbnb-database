# Advanced SQL: Subqueries – Airbnb Database

## Objective
The goal of this task is to **practice both correlated and non-correlated subqueries** for advanced SQL querying.

---

## Queries Implemented

### 1. Non-Correlated Subquery
Find all properties where the average rating is greater than 4.0.
```sql
SELECT p.id, p.title
FROM Property p
WHERE p.id IN (
    SELECT r.property_id
    FROM Review r
    GROUP BY r.property_id
    HAVING AVG(r.rating) > 4.0
);
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
# SQL Aggregations and Window Functions – Airbnb Database

## Objective
The goal of this task is to **analyze data using aggregation and window functions** in SQL.

---

## Queries Implemented

### 1. Total Number of Bookings per User (Aggregation)
This query uses `COUNT` and `GROUP BY` to calculate the number of bookings made by each user.

```sql
SELECT u.id, u.name, COUNT(b.id) AS total_bookings
FROM User u
LEFT JOIN Booking b ON u.id = b.user_id
GROUP BY u.id, u.name
ORDER BY total_bookings DESC;
