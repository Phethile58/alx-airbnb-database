# Partitioning Performance Report – Booking Table

## Objective
The Booking table was identified as a performance bottleneck due to its large size. To optimize queries, table partitioning was applied based on the `start_date` column.

## Implementation
- The `Booking` table was partitioned using **RANGE partitioning** by year.
- Separate partitions were created for 2023, 2024, and 2025.
- Queries filtering by `start_date` were executed using `EXPLAIN ANALYZE` to measure performance.

## Observations
- **Before Partitioning:** The query scanned the entire `Booking` table regardless of the date range, leading to slower execution times.
- **After Partitioning:** Queries were routed only to the relevant partition (e.g., `Booking_2024`), significantly reducing the number of rows scanned.
- The execution plan confirmed improved efficiency, as only the target partition was accessed.

## Conclusion
Partitioning the `Booking` table by `start_date` improved query performance by limiting the scan to relevant subsets of data. This approach is particularly beneficial for large datasets with time-based queries.
