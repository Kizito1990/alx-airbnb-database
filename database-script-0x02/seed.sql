-- Sample Users
INSERT INTO Users (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES
('11111111-1111-1111-1111-111111111111', 'John', 'Doe', 'john@example.com', 'hashed_password_1', '08012345678', 'guest'),
('22222222-2222-2222-2222-222222222222', 'Jane', 'Smith', 'jane@example.com', 'hashed_password_2', '08087654321', 'host'),
('33333333-3333-3333-3333-333333333333', 'Admin', 'User', 'admin@example.com', 'hashed_admin_password', NULL, 'admin');

-- Sample Properties
INSERT INTO Properties (property_id, host_id, name, description, location, pricepernight)
VALUES
('aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '22222222-2222-2222-2222-222222222222', 'Ocean View Apartment', 'A beautiful beachfront apartment.', 'Lagos Island', 250.00),
('aaaaaaa2-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '22222222-2222-2222-2222-222222222222', 'City Center Loft', 'Modern loft in city center.', 'Abuja', 180.00);

-- Sample Bookings
INSERT INTO Bookings (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES
('b1111111-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 'aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '11111111-1111-1111-1111-111111111111', '2025-07-10', '2025-07-15', 1250.00, 'confirmed'),
('b2222222-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 'aaaaaaa2-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '11111111-1111-1111-1111-111111111111', '2025-08-01', '2025-08-05', 720.00, 'pending');

-- Sample Payments
INSERT INTO Payments (payment_id, booking_id, amount, payment_method)
VALUES
('p1111111-pppp-pppp-pppp-pppppppppppp', 'b1111111-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 1250.00, 'stripe');

-- Sample Reviews
INSERT INTO Reviews (review_id, property_id, user_id, rating, comment)
VALUES
('r1111111-rrrr-rrrr-rrrr-rrrrrrrrrrrr', 'aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '11111111-1111-1111-1111-111111111111', 5, 'Amazing place, very clean and great host!');

-- Sample Messages
INSERT INTO Messages (message_id, sender_id, recipient_id, message_body)
VALUES
('m1111111-mmmm-mmmm-mmmm-mmmmmmmmmmmm', '11111111-1111-1111-1111-111111111111', '22222222-2222-2222-2222-222222222222', 'Hi! I would like to ask if the property has Wi-Fi.');
