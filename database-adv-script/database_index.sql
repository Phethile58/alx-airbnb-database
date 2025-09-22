-- Create indexes to improve query performance

-- Index on User.email (frequently used for login/search)
CREATE INDEX idx_user_email ON User(email);

-- Index on Booking.user_id (used in JOIN with User and WHERE filters)
CREATE INDEX idx_booking_user_id ON Booking(user_id);

-- Index on Booking.property_id (used in JOIN with Property)
CREATE INDEX idx_booking_property_id ON Booking(property_id);

-- Index on Property.title (useful for searching or filtering by property name)
CREATE INDEX idx_property_title ON Property(title);

-- Index on Property.location (if queries often filter by location)
CREATE INDEX idx_property_location ON Property(location);
