# Database Index Optimization

## Purpose
Indexes were added to frequently queried columns in the User, Booking, and Property tables to improve performance.

## Indexed Columns

| Table      | Column         | Index Name                |
|------------|----------------|---------------------------|
| User       | email          | idx_user_email            |
| Booking    | user_id        | idx_booking_user_id       |
| Booking    | property_id    | idx_booking_property_id   |
| Booking    | status         | idx_booking_status        |
| Property   | location       | idx_property_location     |
| Property   | host_id        | idx_property_host_id      |

## Performance Evaluation
We used the `EXPLAIN` SQL command to compare query plans before and after indexing. The indexed queries showed improved execution plans using appropriate indexes.
