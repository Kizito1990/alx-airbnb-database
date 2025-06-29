# Airbnb Clone - Database Schema

## 📦 Overview

This SQL script defines the core schema for the backend of the Airbnb clone project. It includes the creation of six major entities and their relationships:

- Users
- Properties
- Bookings
- Payments
- Reviews
- Messages

## 📐 Features

- Uses `UUID` for unique IDs
- `ENUM` types for status and role fields
- Indexes for frequently queried fields
- Referential integrity with foreign keys
- Constraints for data validation (e.g., rating must be between 1–5)

## 📁 Location

- File: `database-script-0x01/schema.sql`
