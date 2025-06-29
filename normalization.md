Step-by-Step Normalization
1️⃣ First Normal Form (1NF)
Rule: Each field should contain only atomic (indivisible) values, and each record must be unique.

✅ Applied to all tables:

All attributes contain atomic values (e.g., no comma-separated amenities or multiple phone numbers).

Each table has a Primary Key for uniquely identifying records (e.g., user_id, property_id, booking_id, etc.).

2️⃣ Second Normal Form (2NF)
Rule: Must be in 1NF, and all non-key attributes must be fully dependent on the primary key (no partial dependencies).

✅ Already applied:

No composite primary keys exist (we’re using UUIDs as single-column primary keys).

All attributes in each table depend entirely on the table's primary key.

Example:

In the Booking table, start_date, end_date, total_price, etc., are all fully dependent on booking_id.

3️⃣ Third Normal Form (3NF)
Rule: Must be in 2NF, and there should be no transitive dependencies (i.e., non-key attributes should not depend on other non-key attributes).

✅ Ensured:

User table stores only user info; roles are stored as ENUMs (no derived fields).

Property table does not store host details — only the host_id (foreign key to User).

Booking does not store user_email or property_name, only IDs.

Review table links to both user_id and property_id, no redundant data (e.g., property name or user name).

Payment table only includes booking reference and amount, not user or property details.

Message table includes only sender and recipient IDs and message content.

✅ Final Tables in 3NF
Table	Description
User	Stores user details and roles (guest, host, admin).
Property	Stores property listings linked to hosts.
Booking	Stores booking data for properties by users.
Payment	Links to bookings, stores payment details.
Review	Stores ratings/comments for properties per booking.
Message	Stores messages between users.

🛡️ Benefits Achieved
Eliminated data redundancy.

Enforced referential integrity using foreign keys.

Improved query performance and scalability.

Enabled easier updates without data inconsistency.

