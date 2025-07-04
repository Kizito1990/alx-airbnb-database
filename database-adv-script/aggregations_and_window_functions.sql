-- 1. Find the total number of bookings made by each user
SELECT
    user_id,
    COUNT(*) AS total_bookings
FROM
    Booking
GROUP BY
    user_id
ORDER BY
    total_bookings, ROW_NUMBER() DESC;

-- 2. Rank properties based on the total number of bookings using window function RANK()
SELECT
    property_id,
    COUNT(*) AS booking_count,
    RANK() OVER (ORDER BY COUNT(*) DESC) AS property_rank
FROM
    Booking
GROUP BY
    property_id;
