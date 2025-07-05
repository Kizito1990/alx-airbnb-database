# Partitioning Performance Report: Booking Table

## Objective
Optimize performance on large datasets by partitioning the `Booking` table using the `start_date` column.

## Partitioning Strategy
- Used `RANGE` partitioning based on `YEAR(start_date)`
- Created partitions for 2019 to 2023 and a `MAXVALUE` fallback

## Test Query
Queried all bookings from the year 2021:
```sql
SELECT * FROM Booking WHERE start_date BETWEEN '2021-01-01' AND '2021-12-31';
