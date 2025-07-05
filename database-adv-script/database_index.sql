
EXPLAIN ANALYZE SELECT * FROM Booking WHERE user_id = 'abc-123';


-- Index on user email for fast lookup during login/authentication
CREATE INDEX idx_user_email ON User(email);

-- Index on booking.user_id to speed up joins between Booking and User
CREATE INDEX idx_booking_user_id ON Booking(user_id);

-- Index on booking.property_id to optimize joins between Booking and Property
CREATE INDEX idx_booking_property_id ON Booking(property_id);

-- Index on booking status for filtering bookings by status
CREATE INDEX idx_booking_status ON Booking(status);

-- Index on property location for fast filtering/searching by location
CREATE INDEX idx_property_location ON Property(location) ;

-- Index on property host_id to optimize joins between Property and User (hosts)
CREATE INDEX idx_property_host_id ON Property(host_id);

-- Re-run the same query
EXPLAIN SELECT * FROM Booking WHERE user_id = 'abc-123';

