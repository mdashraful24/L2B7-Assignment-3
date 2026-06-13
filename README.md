# 📘 Football Ticket Booking System

## 📌 Overview

This project implements a relational database system for a **Football Ticket Booking System**. It demonstrates core SQL concepts such as table design, relationships (PK/FK), joins, subqueries, filtering, and aggregation.

The system manages:

* Users (Football fans & ticket managers)
* Football matches
* Ticket bookings

---

## 🗂️ Database Schema

The database consists of three main tables:

### 👤 Users

Stores all system users (fans and ticket managers).

* `user_id` (Primary Key)
* `full_name`
* `email` (Unique)
* `role` (Football Fan / Ticket Manager)
* `phone_number`

---

### ⚽ Matches

Stores football match details and ticket pricing.

* `match_id` (Primary Key)
* `fixture` (Team vs Team)
* `tournament_category`
* `base_ticket_price`
* `match_status` (Available, Selling Fast, Sold Out, Postponed)

---

### 🎟️ Bookings

Stores ticket booking transactions.

* `booking_id` (Primary Key)
* `user_id` (Foreign Key → Users.user_id)
* `match_id` (Foreign Key → Matches.match_id)
* `seat_number`
* `payment_status` (Pending, Confirmed, Cancelled, Refunded)
* `total_cost`

---

## 🔗 Relationships

* **Users → Bookings**: One-to-Many
  (One user can make multiple bookings)

* **Matches → Bookings**: One-to-Many
  (One match can have many bookings)

* **Bookings** acts as a junction table linking users and matches.

---

## 📁 Project Files

* `QUERY.sql` → SQL script containing:

  * Database creation
  * Table definitions
  * Constraints (PK, FK, CHECK, UNIQUE)
  * Sample data
  * SQL queries (7 tasks)

* `README.md` → Project documentation

---

## ⚙️ Setup Instructions

### 1. Create Database & Run Script

Open PostgreSQL terminal or SQL client and run:

```bash
psql -U postgres -d football -f QUERY.sql
```

OR inside `psql`:

```sql
\i QUERY.sql
```

---

### 2. Verify Tables

Run:

```sql
SELECT * FROM Users;
SELECT * FROM Matches;
SELECT * FROM Bookings;
```

---

## 🧠 Key SQL Features Used

This project demonstrates:

* `PRIMARY KEY` and `FOREIGN KEY` constraints
* `UNIQUE` and `CHECK` constraints
* `INNER JOIN`, `LEFT JOIN`
* `WHERE`, `LIKE`, `ILIKE`
* `COALESCE` for NULL handling
* Subqueries with `AVG()` and `MAX()`
* Sorting and filtering using `ORDER BY` and `LIMIT`

---

## 📊 Example Queries Included

#### 1. Available Champions League Matches

#### 2. User Search

#### 3. Null Payment Handling

#### 4. Booking Details Join

#### 5. All Users with Bookings

#### 6. Above Average Bookings

#### 7. Top Expensive Matches

---

## 🧾 ERD (Entity Relationship Diagram)

You can view the ERD here:

👉 [https://drawsql.app/teams/md-ashraful-islam/diagrams/b7a3-football-ticket-booking-system](https://drawsql.app/teams/md-ashraful-islam/diagrams/b7a3-football-ticket-booking-system)

---

## 📝 Notes

* The schema includes proper relational integrity using PK/FK constraints.
* Data validation is enforced using `CHECK` constraints.
* Sample data includes confirmed, pending, and NULL cases for testing SQL logic.
* Designed for learning intermediate SQL and database modeling concepts.
