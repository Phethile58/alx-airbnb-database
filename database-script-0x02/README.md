# Database Seeding - Airbnb Clone

## 📖 Overview
This directory contains SQL scripts to populate the **Airbnb Clone database** with sample data.  
It follows the schema created in **database-script-0x01**.

The data simulates a real-world scenario with:
- Users (guests, hosts, admin)
- Properties (apartments, villas, lofts)
- Bookings (confirmed, pending, cancelled)
- Payments (completed, pending)
- Reviews (with ratings and comments)
- Messages (communication between users)

---

## 📂 Files
- `seed.sql` → SQL script to insert sample records into the database.
- `README.md` → Documentation for the dataset and instructions.

---

## ▶️ How to Run
First, ensure you’ve created the database schema from **database-script-0x01**:

```bash
psql -U your_username -d airbnb_clone -f ../database-script-0x01/schema.sql
