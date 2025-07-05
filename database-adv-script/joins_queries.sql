-- 1. INNER JOIN: Get all bookings and their respective users
SELECT 
    bookings.booking_id,
    bookings.property_id,
    bookings.start_date,
    bookings.end_date,
    users.user_id,
    users.name,
    users.email
FROM 
    bookings
INNER JOIN 
    users ON bookings.user_id = users.user_id;

-- 2. LEFT JOIN: Get all properties and their reviews, even properties with no reviews
SELECT 
    properties.property_id,
    properties.name AS property_name,
    reviews.review_id,
    reviews.rating,
    reviews.comment
FROM 
    properties
LEFT JOIN 
    reviews ON properties.property_id = reviews.property_id;

-- 3. FULL OUTER JOIN: Get all users and all bookings, including users with no bookings and bookings with no user
-- NOTE: FULL OUTER JOIN is not supported in MySQL. You can simulate it using UNION of LEFT and RIGHT joins.

SELECT 
    users.user_id,
    users.name,
    bookings.booking_id,
    bookings.start_date,
    bookings.end_date
FROM 
    users ORDER BY users.user_id
LEFT JOIN 
    bookings ON users.user_id = bookings.user_id

UNION

SELECT 
    users.user_id,
    users.name,
    bookings.booking_id,
    bookings.start_date,
    bookings.end_date
FROM 
    bookings
RIGHT JOIN 
    users ON users.user_id = bookings.user_id;
