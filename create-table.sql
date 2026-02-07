-- Create a new database named 'sajiloyatra_db'
CREATE DATABASE sajiloyatra_db;

-- Use the 'sajiloyatra_db' database
USE sajiloyatra_db;

-- Table to store passenger details
CREATE TABLE passenger (
    passenger_id INT PRIMARY KEY,       -- Unique ID for each passenger
    name VARCHAR(50) NOT NULL,          -- Passenger's name
    contact BIGINT NOT NULL,            -- Contact number
    email VARCHAR(50) NOT NULL,         -- Email address
    gender VARCHAR(10) NOT NULL,        -- Gender
    date_of_birth DATE NOT NULL,        -- Date of birth
    luggage_requirement VARCHAR(50) NOT NULL -- Luggage preferences/details
);

-- Table to store trip information
CREATE TABLE trip (
    trip_id INT PRIMARY KEY,            -- Unique ID for each trip
    departure_time TIME NOT NULL,       -- Scheduled departure time
    arrival_time TIME NOT NULL,         -- Scheduled arrival time
    trip_status VARCHAR(50) NOT NULL,  -- Status of trip (e.g., On-Time, Delayed)
    schedule_update VARCHAR(50) NOT NULL -- Notes about any schedule updates
);

-- Junction table linking trips and passengers (many-to-many relationship)
CREATE TABLE trip_passenger (
    trip_passenger_id INT PRIMARY KEY,  -- Unique ID for the junction table
    trip_id INT,                        -- Trip reference
    passenger_id INT,                   -- Passenger reference
    FOREIGN KEY (trip_id) REFERENCES trip(trip_id),
    FOREIGN KEY (passenger_id) REFERENCES passenger(passenger_id)
);

-- Table to store route information
CREATE TABLE route (
    route_id INT PRIMARY KEY,           -- Unique ID for each route
    city VARCHAR(50) NOT NULL,          -- Starting city
    destination VARCHAR(50) NOT NULL,   -- Destination city
    distance VARCHAR(50) NOT NULL       -- Distance between cities (could be in km/miles)
);

-- Junction table linking routes and passengers (many-to-many relationship)
CREATE TABLE route_passenger (
    route_passenger_id INT PRIMARY KEY,
    route_id INT,
    passenger_id INT,
    FOREIGN KEY (route_id) REFERENCES route(route_id),
    FOREIGN KEY (passenger_id) REFERENCES passenger(passenger_id)
);

-- Junction table linking routes and trips (many-to-many relationship)
CREATE TABLE route_trip (
    route_trip_id INT PRIMARY KEY,
    route_id INT,
    trip_id INT,
    FOREIGN KEY (route_id) REFERENCES route(route_id),
    FOREIGN KEY (trip_id) REFERENCES trip(trip_id)
);

-- Table to store bus details
CREATE TABLE bus (
    bus_id INT PRIMARY KEY,             -- Unique ID for each bus
    bus_number INT NOT NULL,            -- Bus number/identifier
    capacity INT NOT NULL,              -- Maximum capacity of the bus
    status VARCHAR(50) NOT NULL         -- Current status (e.g., Available, In Maintenance)
);

-- Junction table linking routes and buses
CREATE TABLE route_bus (
    route_bus_id INT PRIMARY KEY,
    route_id INT,
    bus_id INT,
    FOREIGN KEY (route_id) REFERENCES route(route_id),
    FOREIGN KEY (bus_id) REFERENCES bus(bus_id)
);

-- Table to store staff details
CREATE TABLE staff (
    staff_id INT PRIMARY KEY,           -- Unique ID for staff
    name VARCHAR(50) NOT NULL,          -- Staff member name
    role VARCHAR(50) NOT NULL,          -- Staff role (e.g., Driver, Conductor)
    contact_number BIGINT NOT NULL,     -- Contact number
    status VARCHAR(50) NOT NULL         -- Current status (Active, Inactive)
);

-- Junction table linking routes and staff
CREATE TABLE route_staff (
    route_staff_id INT PRIMARY KEY,
    route_id INT,
    staff_id INT,
    FOREIGN KEY (route_id) REFERENCES route(route_id),
    FOREIGN KEY (staff_id) REFERENCES staff(staff_id)
);

-- Table to store booking information
CREATE TABLE booking (
    booking_id INT PRIMARY KEY,         -- Unique ID for each booking
    booking_date DATETIME NOT NULL,     -- Date and time of booking
    status VARCHAR(50) NOT NULL,        -- Booking status (Confirmed, Cancelled, Pending)
    class VARCHAR(50) NOT NULL          -- Class type (e.g., Economy, Business)
);

-- Junction table linking routes and bookings
CREATE TABLE route_booking (
    route_booking_id INT PRIMARY KEY,
    route_id INT,
    booking_id INT,
    FOREIGN KEY (route_id) REFERENCES route(route_id),
    FOREIGN KEY (booking_id) REFERENCES booking(booking_id)
);

-- Table to store ticket details
CREATE TABLE ticket (
    ticket_id INT PRIMARY KEY,          -- Unique ticket ID
    price DECIMAL(10,2) NOT NULL,      -- Ticket price
    issue_date DATE NOT NULL,           -- Ticket issue date
    ticket_status VARCHAR(50) NOT NULL -- Status (e.g., Issued, Cancelled)
);

-- Junction table linking routes and tickets
CREATE TABLE route_ticket (
    route_ticket_id INT PRIMARY KEY,
    route_id INT,
    ticket_id INT,
    FOREIGN KEY (route_id) REFERENCES route(route_id),
    FOREIGN KEY (ticket_id) REFERENCES ticket(ticket_id)
);

-- Table to store payment information
CREATE TABLE payment (
    payment_id INT PRIMARY KEY,         -- Unique ID for each payment
    amount DECIMAL(10,2) NOT NULL,     -- Payment amount
    payment_date DATE NOT NULL,         -- Date of payment
    payment_method VARCHAR(50) NOT NULL,-- Method (Cash, Card, Online)
    payment_status VARCHAR(50) NOT NULL -- Payment status (Completed, Pending, Failed)
);

-- Junction table linking routes and payments
CREATE TABLE route_payment (
    route_payment_id INT PRIMARY KEY,
    route_id INT,
    payment_id INT,
    FOREIGN KEY (route_id) REFERENCES route(route_id),
    FOREIGN KEY (payment_id) REFERENCES payment(payment_id)
);
