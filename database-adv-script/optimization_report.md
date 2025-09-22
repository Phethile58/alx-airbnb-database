# Optimization Report

## Initial Query
The first query retrieved all bookings with **user details, property details, and payment details**.  
It included all columns (`email`, `status`, etc.), even if they were not required.

### Performance Analysis
Using `EXPLAIN ANALYZE`, the database showed:
- Sequential scans on **User**, **Property**, and **Payment** tables.
- Larger join cost due to unused columns being selected.
- Redundant joins if some reports don’t need all details.

## Refactoring Steps
1. **Selective Columns**  
   Reduced the number of selected columns to only those necessary for the report.
2. **Indexes**  
   Ensured that the following indexes exist:
   - `Booking.user_id`
   - `Booking.property_id`
   - `Payment.booking_id`
3. **Refactored Query**  
   Optimized query now retrieves fewer columns and takes advantage of indexes, reducing execution time.

## Result
The refactored query showed a **faster execution plan** under `EXPLAIN ANALYZE`, with index scans replacing sequential scans, and reduced total cost.

[paste the report above here]
