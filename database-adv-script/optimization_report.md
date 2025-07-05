# SQL Query Performance Optimization

## Goal
To optimize a complex query that joins Booking, User, Property, and Payment tables.

## Steps Taken
- Initial query was analyzed using `EXPLAIN`.
- Indexes were created on `user_id`, `property_id`, and `booking_id`.
- SELECT fields were limited to only necessary ones.
- Used `INNER JOIN` where appropriate and retained `LEFT JOIN` only for optional relationships.

## Outcome
`EXPLAIN` shows improved query plan with `ref` and `eq_ref` join types instead of `ALL`.
Query execution time reduced significantly on large datasets.
