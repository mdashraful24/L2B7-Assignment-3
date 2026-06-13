-- CREATE DATABASE
-- =========================
CREATE DATABASE football;


-- TABLE CREATION
-- =========================

-- USERS TABLE
-- =========================
CREATE TABLE Users (
    user_id SERIAL PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    role VARCHAR(20) NOT NULL CHECK (role IN ('Ticket Manager', 'Football Fan')),
    phone_number VARCHAR(20)
);

-- MATCHES TABLE
-- =========================
CREATE TABLE Matches (
    match_id SERIAL PRIMARY KEY,
    fixture VARCHAR(150) NOT NULL,
    tournament_category VARCHAR(100) NOT NULL,
    base_ticket_price DECIMAL(10,2) NOT NULL CHECK (base_ticket_price >= 0),
    match_status VARCHAR(20) NOT NULL CHECK (match_status IN ('Available', 'Selling Fast', 'Sold Out', 'Postponed'))
);

CREATE TABLE Bookings (
    booking_id SERIAL PRIMARY KEY,
    user_id INT NOT NULL REFERENCES Users(user_id),
    match_id INT NOT NULL REFERENCES Matches(match_id),
    seat_number VARCHAR(10),
    payment_status VARCHAR(20) CHECK (payment_status IN ('Pending', 'Confirmed', 'Cancelled', 'Refunded')),
    total_cost DECIMAL(10,2) NOT NULL CHECK (total_cost >= 0)
);