# Database Schema - Airbnb Clone

## Overview
This directory contains the **SQL schema** for the Airbnb Clone project.  
It defines all the database tables, relationships, constraints, and indexes.

## Files
- `schema.sql`: SQL script to create the full database schema.
- `README.md`: This documentation file.

## Entities & Relationships
- **User**: Stores user details (guests, hosts, admin).
- **Property**: Properties listed by hosts.
- **Booking**: Reservations made by guests.
- **Payment**: Linked to a booking, handles transactions.
- **Review**: Linked to a booking, stores ratings and comments.
- **Message**: Communication between users (guest ↔ host).
- **Index**: Tracks property indexing and updates.

## How to Run
Run the schema file in PostgreSQL (or compatible SQL DB):

```bash
psql -U your_username -d airbnb_clone -f schema.sql
