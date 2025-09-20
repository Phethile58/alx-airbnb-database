# ERD Requirements for Airbnb Database

## Entities and Attributes

### 1. User
- user_id (PK)
- name
- email (unique)
- password
- created_at
- updated_at

### 2. Property
- property_id (PK)
- owner_id (FK → User.user_id)
- title
- description
- location
- price_per_night
- created_at

### 3. Booking
- booking_id (PK)
- user_id (FK → User.user_id)
- property_id (FK → Property.property_id)
- start_date
- end_date
- total_amount
- status

### 4. Payment
- payment_id (PK)
- booking_id (FK → Booking.booking_id)
- amount
- payment_date
- payment_method
- status

### 5. Review
- review_id (PK)
- user_id (FK → User.user_id)
- property_id (FK → Property.property_id)
- rating
- comment
- created_at

---

## Relationships

- **User → Property**: One user (host) can own many properties.  
- **User → Booking**: One user (guest) can make many bookings.  
- **Property → Booking**: One property can have many bookings.  
- **Booking → Payment**: One booking can have one or more payments.  
- **User → Review**: One user can leave many reviews.  
- **Property → Review**: One property can have many reviews.  

---

## ERD Diagram
The visual ER diagram will be created using **Draw.io** and exported as:
- `ERD/ERD.drawio` (editable file)  
- `ERD/ERD.png` (image for documentation)
