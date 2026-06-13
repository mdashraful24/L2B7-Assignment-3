# Football Ticket Booking System

## Overview

This repository contains the SQL implementation for a Football Ticket Booking System. It includes database creation, table definitions, seeded sample data, and a set of example queries designed to demonstrate relational data retrieval, joins, filtering, and aggregation.

## Database Schema

The system uses three core tables:

- `Users`
  - `user_id` (primary key)
  - `full_name`
  - `email`
  - `role` (Ticket Manager or Football Fan)
  - `phone_number`
- `Matches`
  - `match_id` (primary key)
  - `fixture`
  - `tournament_category`
  - `base_ticket_price`
  - `match_status` (Available, Selling Fast, Sold Out, Postponed)
- `Bookings`
  - `booking_id` (primary key)
  - `user_id` (foreign key to `Users`)
  - `match_id` (foreign key to `Matches`)
  - `seat_number`
  - `payment_status` (Pending, Confirmed, Cancelled, Refunded)
  - `total_cost`

## Files

- `QUERY.sql` — SQL script containing database creation, table definitions, seeded test data, and example queries.
- `README.md` — This documentation file.

## Setup Instructions

1. Open your SQL client or terminal connected to a PostgreSQL instance.
2. Run the `QUERY.sql` script to create the `football` database and populate it with sample data.

   Example using `psql`:

   ```sql
   \i QUERY.sql
   ```

3. Verify the tables and sample data by running the provided `SELECT` statements.

## Key SQL Examples

The script includes sample queries for common operations:

- Retrieving available Champions League matches with rounded ticket prices.
- Finding users by name patterns.
- Identifying incomplete bookings with missing payment status.
- Joining `Bookings`, `Users`, and `Matches` to show complete booking details.
- Listing all users with their bookings, including users without any bookings.
- Comparing booking totals against the average booking cost.
- Selecting the top two matches below the highest ticket price.

## ERD

A visual entity-relationship diagram is available here:

https://drawsql.app/teams/md-ashraful-islam/diagrams/b7a3-football-ticket-booking-system

## Notes

- The database schema includes data validation via `CHECK` constraints.
- The sample data covers both confirmed and pending bookings, as well as sold out and available matches.
- This project is suitable for learning SQL table relationships, joins, filtering, and aggregation.
