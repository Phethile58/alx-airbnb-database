-- seed.sql
-- Sample data for Airbnb Clone project

-- ==========================
-- Users
-- ==========================
INSERT INTO "User" (name, email, password, role)
VALUES 
('Alice Johnson', 'alice@example.com', 'hashed_password1', 'guest'),
('Bob Smith', 'bob@example.com', 'hashed_password2', 'host'),
('Charlie Brown', 'charlie@example.com', 'hashed_password3', 'guest'),
('Diana Prince', 'diana@example.com', 'hashed_password4', 'host'),
('Admin User', 'admin@example.com', 'hashed_password5', 'admin');

-- ==========================
-- Properties
-- ==========================
INSERT INTO Property (user_id, title, description, location, price_per_night)
VALUES
(2, 'Cozy Apartment in Cape Town', 'Modern 1-bedroom apartment with sea view', 'Cape Town', 120.00),
(4, 'Luxury Villa in Durban', 'Spacious villa with pool and garden', 'Durban', 350.00),
(2, 'City Center Loft', 'Stylish loft near shops and restaurants', 'Johannesburg', 200.00);

-- ==========================
-- Bookings
-- ==========================
INSERT INTO Booking (user_id, property_id, start_date, end_date, status)
VALUES
(1, 1, '2025-10-01', '2025-10-05', 'confirmed'),
(3, 2, '2025-11-10', '2025-11-15', 'pending'),
(1, 3, '2025-12-01', '2025-12-03', 'cancelled');

-- ==========================
-- Payments
-- ==========================
INSERT INTO Payment (booking_id, amount, method, status)
VALUES
(1, 480.00, 'Credit Card', 'completed'),
(2, 1750.00, 'PayPal', 'pending');

-- ==========================
-- Reviews
-- ==========================
INSERT INTO Review (booking_id, rating, comment)
VALUES
(1, 5, 'Amazing place! Very clean and great view.'),
(3, 2, 'Had to cancel, but host was not very responsive.');

-- ==========================
-- Messages
-- ==========================
INSERT INTO Message (sender_id, receiver_id, booking_id, content)
VALUES
(1, 2, 1, 'Hi Bob, I’m excited about my stay!'),
(2, 1, 1, 'Thanks Alice, looking forward to hosting you.'),
(3, 4, 2, 'Hello Diana, can I check in earlier?');

-- ==========================
-- Index Records
-- ==========================
INSERT INTO Index (property_id)
VALUES
(1),
(2),
(3);
