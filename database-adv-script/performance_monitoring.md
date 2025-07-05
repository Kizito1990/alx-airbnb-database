#  Performance Monitoring and Optimization Report

##  Objective
Continuously monitor and refine database performance using tools such as `EXPLAIN` and `EXPLAIN ANALYZE`. Identify slow queries, bottlenecks, and optimize schema/indexing strategies.

---

## 🔍 1. Monitored Query

```sql
SELECT * FROM Booking
JOIN Property ON Booking.property_id = Property.property_id
JOIN User ON Booking.user_id = User.user_id
WHERE Booking.start_date BETWEEN '2023-01-01' AND '2023-12-31';
# 📊 Performance Monitoring and Optimization Report

## 🎯 Objective
Continuously monitor and refine database performance using tools such as `EXPLAIN` and `EXPLAIN ANALYZE`. Identify slow queries, bottlenecks, and optimize schema/indexing strategies.

---

## 🔍 1. Monitored Query

```sql
SELECT * FROM Booking
JOIN Property ON Booking.property_id = Property.property_id
JOIN User ON Booking.user_id = User.user_id
WHERE Booking.start_date BETWEEN '2023-01-01' AND '2023-12-31';
