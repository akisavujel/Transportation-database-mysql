# Transportation Management System

The Transportation Management System is a database-driven application for managing bus operations. It handles passengers, trips, routes, buses, staff, bookings, tickets, and payments. Using SQL queries, it enables data analysis, reporting, and insights into travel schedules, revenue, and occupancy, optimizing operations and improving decision-making for transportation management.

## Project Objective

- Manage passengers, trips, routes, bookings, tickets, payments, and staff efficiently
- Schedule trips and assign buses and staff to optimize operations
- Track payments, revenue, and passenger activity for accurate reporting and analysis
- Provide insights and support decision-making to improve overall transportation management

## Technologies Used

- **MySQL** – For database creation, data storage, and management  
- **SQL Queries** – To retrieve, aggregate, and analyze data  
- **Canva** – For creating the project presentation  
- **MySQL Workbench** – For running queries, designing, and visualizing database schema

## Dataset Description

The dataset consists of multiple relational tables simulating a bus management system:
- **Passenger** – Stores passenger details, contact, gender, date of birth, and luggage requirements  
- **Trip** – Records trip details including departure and arrival times, and status  
- **Route** – Defines cities, destinations, and distances  
- **Bus** – Maintains bus numbers, capacity, and operational status  
- **Staff** – Contains staff names, roles, contact, and assignment status  
- **Booking** – Records booking date, status, and class  
- **Ticket** – Stores ticket IDs, price, issue date, and status  
- **Payment** – Records payment amount, date, method, and status  
- **Mapping Tables** – Link passengers, trips, routes, buses, staff, bookings, tickets, and payments together for relational integrity

## Normalization

### Unnormalized Form (UNF)
- **Passenger**  
(Passenger_id, Name, Contact, Email, Gender, Date of Birth, Luggage Requirement,  
{Trip_id, Departure_time, Arrival_time, Trip_status, Schedule_update},  
{Route_id, City, Destination, Distance, Bus_id, Bus_number, Capacity, Status, Bus_type, Last_maintenance_date, Booking_id, Date, Status, Class, Staff_id, Name, Role, Number, Status, Booking_id, Date, Status, Class, Ticket_id, Price, Issue_date, Ticket_status, Payment_id, Amount, Payment_date, Payment_method, Payment_status})

### First Normal Form (1NF)
- **Passenger-1**: (Passenger_id, Name, Contact, Email, Gender, Date of Birth, Luggage Requirement)  
- **Trip_Passenger-1**: (Trip_id, Passenger_id*, Departure_time, Arrival_time, Trip_status, Schedule_update)  
- **Route_Passenger-1**: (Route_id, Passenger_id*, City, Destination, Distance, Bus_id, Bus_number, Capacity, Status, Bus_type, Last_maintenance_date, Booking_id, Date, Status, Class, Staff_id, Name, Role, Number, Status, Booking_id, Date, Status, Class, Ticket_id, Price, Issue_date, Ticket_status, Payment_id, Amount, Payment_date, Payment_method, Payment_status)

### Second Normal Form (2NF)
- **Passenger-2**: (Passenger_id, Name, Contact, Email, Gender, Date of Birth, Luggage Requirement)  
- **Trip_Passenger-2**: (Trip_Passenger_id, Trip_id*, Passenger_id*)  
- **Trip-2**: (Trip_id, Departure_time, Arrival_time, Trip_status, Schedule_update)  
- **Route_Passenger-2**: (Route_Passenger_id, Route_id*, Passenger_id*)  
- **Route-2**: (Route_id, City, Destination, Distance, Bus_id, Bus_number, Capacity, Status, Bus_type, Last_maintenance_date, Booking_id, Date, Status, Class, Staff_id, Name, Role, Number, Status, Ticket_id, Price, Issue_date, Ticket_status, Payment_id, Amount, Payment_date, Payment_method, Payment_status)

### Third Normal Form (3NF)
- **Passenger**: (Passenger_id, Name, Contact, Email, Gender, Date of Birth, Luggage Requirement)  
- **Trip_Passenger**: (Trip_Passenger_id, Trip_id*, Passenger_id*)  
- **Trip**: (Trip_id, Departure_time, Arrival_time, Trip_status, Schedule_update)  
- **Route_Passenger**: (Route_Passenger_id, Route_id*, Passenger_id*)  
- **Route**: (Route_id, City, Destination, Distance)  
- **Route_Bus**: (Route_Bus_id, Route_id*, Bus_id*)  
- **Bus**: (Bus_id, Bus_Number, Capacity, Status, Bus_type, Last_maintenance_date)  
- **Route_Booking**: (Route_Booking_id, Route_id*, Booking_id*)  
- **Booking**: (Booking_id, Date, Status, Class)  
- **Route_Staff**: (Route_Staff_id, Route_id*, Staff_id*)  
- **Staff**: (Staff_id, Name, Role, Number, Status)  
- **Route_Ticket**: (Route_Ticket_id, Route_id*, Ticket_id*)  
- **Ticket**: (Ticket_id, Price, Issue_date, Ticket_status)  
- **Route_Payment**: (Route_Payment_id, Route_id*, Payment_id*)  
- **Payment**: (Payment_id, Amount, Payment_date, Payment_method, Payment_status)


## Key Insights

- Pokhara and Kathmandu routes have the highest number of trips and passengers.  
- Passenger activity shows certain users frequently travel, highlighting loyal customers.  
- Revenue and payments are highest on popular routes, providing data for operational planning.  
- Bus occupancy and schedule tracking help identify underutilized trips for optimization.  

## Conclusion

The Transportation Management System effectively manages passengers, trips, routes, bookings, tickets, payments, and staff assignments. SQL queries provide valuable insights into revenue, occupancy, and travel patterns, enabling data-driven decision-making and improved efficiency in transportation management.  

## Author

- Akisha Bhujel
- Github - https://github.com/akisavujel
- Kaggle - https://www.kaggle.com/akisavujel
- Linked in - https://www.linkedin.com/in/akisa-vujel-5437843a2/
