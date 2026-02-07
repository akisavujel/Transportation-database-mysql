-- Insert sample data into the 'passenger' table
-- Each row represents a passenger with details such as name, contact, email, gender, DOB, and luggage preference
INSERT INTO passenger VALUES
(1,'Amit Sharma',9801111111,'amit1@gmail.com','Male','1999-01-01','Light'),
(2,'Anita Thapa',9801111112,'anita2@gmail.com','Female','2000-02-02','Medium'),
(3,'Arjun KC',9801111113,'arjun3@gmail.com','Male','1998-03-03','Heavy'),
(4,'Sita Rai',9801111114,'sita4@gmail.com','Female','2001-04-04','Light'),
(5,'Ramesh Gurung',9801111115,'ramesh5@gmail.com','Male','1997-05-05','Medium'),
(6,'Nisha Shrestha',9801111116,'nisha6@gmail.com','Female','1999-06-06','Light'),
(7,'Bikash Lama',9801111117,'bikash7@gmail.com','Male','1996-07-07','Heavy'),
(8,'Puja Karki',9801111118,'puja8@gmail.com','Female','2002-08-08','Medium'),
(9,'Suman Adhikari',9801111119,'suman9@gmail.com','Male','1995-09-09','Light'),
(10,'Rita Bista',9801111120,'rita10@gmail.com','Female','1998-10-10','Medium'),
(11,'Anil Pandey',9801111121,'anil11@gmail.com','Male','1997-11-11','Light'),
(12,'Sunita Joshi',9801111122,'sunita12@gmail.com','Female','2000-12-12','Medium'),
(13,'Kiran Thapa',9801111123,'kiran13@gmail.com','Male','1996-01-13','Heavy'),
(14,'Maya Tamang',9801111124,'maya14@gmail.com','Female','1999-02-14','Light'),
(15,'Dipesh Shah',9801111125,'dipesh15@gmail.com','Male','1998-03-15','Medium'),
(16,'Sabina Rana',9801111126,'sabina16@gmail.com','Female','2001-04-16','Light'),
(17,'Prakash Oli',9801111127,'prakash17@gmail.com','Male','1995-05-17','Heavy'),
(18,'Nirmala Basnet',9801111128,'nirmala18@gmail.com','Female','1997-06-18','Medium'),
(19,'Roshan Magar',9801111129,'roshan19@gmail.com','Male','1996-07-19','Light'),
(20,'Alina Poudel',9801111130,'alina20@gmail.com','Female','2002-08-20','Medium');

-- Insert sample data into the 'trip' table
-- Each row represents a trip with departure and arrival times, status, and schedule updates
INSERT INTO trip VALUES
(101,'05:00','11:00','Scheduled','On Time'),
(102,'06:00','12:00','Scheduled','On Time'),
(103,'07:00','13:00','Scheduled','Delayed'),
(104,'08:00','14:00','Scheduled','On Time'),
(105,'09:00','15:00','Scheduled','On Time'),
(106,'10:00','16:00','Scheduled','Delayed'),
(107,'11:00','17:00','Scheduled','On Time'),
(108,'12:00','18:00','Scheduled','On Time'),
(109,'13:00','19:00','Scheduled','On Time'),
(110,'14:00','20:00','Scheduled','Delayed'),
(111,'15:00','21:00','Scheduled','On Time'),
(112,'16:00','22:00','Scheduled','On Time'),
(113,'17:00','23:00','Scheduled','Delayed'),
(114,'18:00','00:00','Scheduled','On Time'),
(115,'19:00','01:00','Scheduled','On Time'),
(116,'20:00','02:00','Scheduled','Delayed'),
(117,'21:00','03:00','Scheduled','On Time'),
(118,'22:00','04:00','Scheduled','On Time'),
(119,'23:00','05:00','Scheduled','On Time'),
(120,'04:30','10:30','Scheduled','Delayed');

-- Insert sample data into the 'route' table
-- Each row represents a route between two cities with the distance
INSERT INTO route VALUES
(201,'Pokhara','Kathmandu','200km'),
(202,'Pokhara','Chitwan','150km'),
(203,'Kathmandu','Pokhara','200km'),
(204,'Kathmandu','Butwal','180km'),
(205,'Butwal','Pokhara','170km'),
(206,'Chitwan','Kathmandu','140km'),
(207,'Pokhara','Butwal','160km'),
(208,'Butwal','Chitwan','120km'),
(209,'Chitwan','Pokhara','150km'),
(210,'Kathmandu','Chitwan','140km'),
(211,'Pokhara','Dhangadhi','450km'),
(212,'Kathmandu','Biratnagar','370km'),
(213,'Biratnagar','Kathmandu','370km'),
(214,'Butwal','Kathmandu','180km'),
(215,'Chitwan','Butwal','130km'),
(216,'Pokhara','Nepalgunj','420km'),
(217,'Nepalgunj','Pokhara','420km'),
(218,'Kathmandu','Nepalgunj','510km'),
(219,'Birgunj','Kathmandu','135km'),
(220,'Kathmandu','Birgunj','135km');


-- Insert sample data into the 'bus' table
-- Each row represents a bus with its number, capacity, and current status
INSERT INTO bus VALUES
(301,1001,40,'Active'),(302,1002,40,'Active'),
(303,1003,35,'Active'),(304,1004,45,'Active'),
(305,1005,40,'Maintenance'),(306,1006,50,'Active'),
(307,1007,36,'Active'),(308,1008,42,'Active'),
(309,1009,40,'Active'),(310,1010,38,'Active'),
(311,1011,45,'Active'),(312,1012,40,'Active'),
(313,1013,50,'Active'),(314,1014,36,'Active'),
(315,1015,42,'Active'),(316,1016,40,'Active'),
(317,1017,38,'Active'),(318,1018,45,'Active'),
(319,1019,40,'Active'),(320,1020,50,'Active');

-- Insert sample data into the 'staff' table
-- Each row represents a staff member with their role, contact number, and status
INSERT INTO staff VALUES
(401,'Ramesh','Driver',980900001,'Active'),
(402,'Sita','Conductor',980900002,'Active'),
(403,'Bikash','Driver',980900003,'Active'),
(404,'Puja','Conductor',980900004,'Active'),
(405,'Anil','Driver',980900005,'Active'),
(406,'Sunita','Conductor',980900006,'Active'),
(407,'Kiran','Driver',980900007,'Active'),
(408,'Maya','Conductor',980900008,'Active'),
(409,'Dipesh','Driver',980900009,'Active'),
(410,'Sabina','Conductor',980900010,'Active'),
(411,'Prakash','Driver',980900011,'Active'),
(412,'Nirmala','Conductor',980900012,'Active'),
(413,'Roshan','Driver',980900013,'Active'),
(414,'Alina','Conductor',980900014,'Active'),
(415,'Suman','Driver',980900015,'Active'),
(416,'Rita','Conductor',980900016,'Active'),
(417,'Arjun','Driver',980900017,'Active'),
(418,'Nisha','Conductor',980900018,'Active'),
(419,'Amit','Driver',980900019,'Active'),
(420,'Anita','Conductor',980900020,'Active');

-- Insert sample data into the 'booking' table
-- Each row represents a booking with date, status, and class type
INSERT INTO booking VALUES
(501,'2025-12-01 09:00','Confirmed','AC'),
(502,'2025-12-02 09:00','Confirmed','Normal'),
(503,'2025-12-03 09:00','Confirmed','AC'),
(504,'2025-12-04 09:00','Confirmed','Normal'),
(505,'2025-12-05 09:00','Confirmed','AC'),
(506,'2025-12-06 09:00','Confirmed','Normal'),
(507,'2025-12-07 09:00','Confirmed','AC'),
(508,'2025-12-08 09:00','Confirmed','Normal'),
(509,'2025-12-09 09:00','Confirmed','AC'),
(510,'2025-12-10 09:00','Confirmed','Normal'),
(511,'2025-12-11 09:00','Confirmed','AC'),
(512,'2025-12-12 09:00','Confirmed','Normal'),
(513,'2025-12-13 09:00','Confirmed','AC'),
(514,'2025-12-14 09:00','Confirmed','Normal'),
(515,'2025-12-15 09:00','Confirmed','AC'),
(516,'2025-12-16 09:00','Confirmed','Normal'),
(517,'2025-12-17 09:00','Confirmed','AC'),
(518,'2025-12-18 09:00','Confirmed','Normal'),
(519,'2025-12-19 09:00','Confirmed','AC'),
(520,'2025-12-20 09:00','Confirmed','Normal');


-- Insert sample data into the 'ticket' table
-- Each row represents a ticket with price, issue date, and ticket status
INSERT INTO ticket VALUES
(601,1200,'2025-12-01','Issued'),
(602,1300,'2025-12-02','Issued'),
(603,1400,'2025-12-03','Issued'),
(604,1500,'2025-12-04','Issued'),
(605,1600,'2025-12-05','Issued'),
(606,1200,'2025-12-06','Issued'),
(607,1300,'2025-12-07','Issued'),
(608,1400,'2025-12-08','Issued'),
(609,1500,'2025-12-09','Issued'),
(610,1600,'2025-12-10','Issued'),
(611,1200,'2025-12-11','Issued'),
(612,1300,'2025-12-12','Issued'),
(613,1400,'2025-12-13','Issued'),
(614,1500,'2025-12-14','Issued'),
(615,1600,'2025-12-15','Issued'),
(616,1200,'2025-12-16','Issued'),
(617,1300,'2025-12-17','Issued'),
(618,1400,'2025-12-18','Issued'),
(619,1500,'2025-12-19','Issued'),
(620,1600,'2025-12-20','Issued');

-- Insert sample data into the 'payment' table
-- Each row represents a payment made for a booking or ticket
INSERT INTO payment VALUES
(701,1200,'2025-12-01','Online','Paid'),
(702,1300,'2025-12-02','Cash','Paid'),
(703,1400,'2025-12-03','Online','Paid'),
(704,1500,'2025-12-04','Cash','Paid'),
(705,1600,'2025-12-05','Online','Paid'),
(706,1200,'2025-12-06','Cash','Paid'),
(707,1300,'2025-12-07','Online','Paid'),
(708,1400,'2025-12-08','Cash','Paid'),
(709,1500,'2025-12-09','Online','Paid'),
(710,1600,'2025-12-10','Cash','Paid'),
(711,1200,'2025-12-11','Online','Paid'),
(712,1300,'2025-12-12','Cash','Paid'),
(713,1400,'2025-12-13','Online','Paid'),
(714,1500,'2025-12-14','Cash','Paid'),
(715,1600,'2025-12-15','Online','Paid'),
(716,1200,'2025-12-16','Cash','Paid'),
(717,1300,'2025-12-17','Online','Paid'),
(718,1400,'2025-12-18','Cash','Paid'),
(719,1500,'2025-12-19','Online','Paid'),
(720,1600,'2025-12-20','Cash','Paid');

-- Insert sample data into the 'trip_passenger' table
-- Many-to-many relationship: assigns passengers to trips
INSERT INTO trip_passenger VALUES
(1,101,1),(2,102,2),(3,103,3),(4,104,4),(5,105,5),
(6,106,6),(7,107,7),(8,108,8),(9,109,9),(10,110,10),
(11,111,11),(12,112,12),(13,113,13),(14,114,14),(15,115,15),
(16,116,16),(17,117,17),(18,118,18),(19,119,19),(20,120,20),
(21,101,1),(22,102,2),(23,103,3),(24,104,4),(25,105,5),
(26,106,6),(27,107,7),(28,108,8),(29,109,9),(30,110,10),
(31,111,11),(32,112,12),(33,113,13),(34,114,14),(35,115,15),
(36,116,16),(37,117,17),(38,118,18),(39,119,19),(40,120,20),
(41,101,1),(42,102,2),(43,103,3),(44,104,4),(45,105,5),
(46,106,6),(47,107,7),(48,108,8),(49,109,9),(50,110,10);

-- Insert sample data into the 'route_passenger' table
-- Many-to-many relationship: assigns passengers to routes
INSERT INTO route_passenger VALUES
(1,201,1),(2,202,2),(3,203,3),(4,204,4),(5,205,5),
(6,206,6),(7,207,7),(8,208,8),(9,209,9),(10,210,10),
(11,211,11),(12,212,12),(13,213,13),(14,214,14),(15,215,15),
(16,216,16),(17,217,17),(18,218,18),(19,219,19),(20,220,20),
(21,201,1),(22,202,2),(23,203,3),(24,204,4),(25,205,5),
(26,206,6),(27,207,7),(28,208,8),(29,209,9),(30,210,10),
(31,211,11),(32,212,12),(33,213,13),(34,214,14),(35,215,15),
(36,216,16),(37,217,17),(38,218,18),(39,219,19),(40,220,20),
(41,201,1),(42,202,2),(43,203,3),(44,204,4),(45,205,5),
(46,206,6),(47,207,7),(48,208,8),(49,209,9),(50,210,10);

-- Insert sample data into the 'route_trip' table
-- Many-to-many relationship: assigns trips to routes
INSERT INTO route_trip VALUES
(1,201,101),(2,202,102),(3,203,103),(4,204,104),(5,205,105),
(6,206,106),(7,207,107),(8,208,108),(9,209,109),(10,210,110),
(11,211,111),(12,212,112),(13,213,113),(14,214,114),(15,215,115),
(16,216,116),(17,217,117),(18,218,118),(19,219,119),(20,220,120),
(21,201,101),(22,202,102),(23,203,103),(24,204,104),(25,205,105),
(26,206,106),(27,207,107),(28,208,108),(29,209,109),(30,210,110),
(31,211,111),(32,212,112),(33,213,113),(34,214,114),(35,215,115),
(36,216,116),(37,217,117),(38,218,118),(39,219,119),(40,220,120),
(41,201,101),(42,202,102),(43,203,103),(44,204,104),(45,205,105),
(46,206,106),(47,207,107),(48,208,108),(49,209,109),(50,210,110);

-- Insert sample data into the 'route_bus' table
-- Many-to-many relationship: assigns buses to routes
INSERT INTO route_bus VALUES
(1,201,301),(2,202,302),(3,203,303),(4,204,304),(5,205,305),
(6,206,306),(7,207,307),(8,208,308),(9,209,309),(10,210,310),
(11,211,311),(12,212,312),(13,213,313),(14,214,314),(15,215,315),
(16,216,316),(17,217,317),(18,218,318),(19,219,319),(20,220,320),
(21,201,301),(22,202,302),(23,203,303),(24,204,304),(25,205,305),
(26,206,306),(27,207,307),(28,208,308),(29,209,309),(30,210,310),
(31,211,311),(32,212,312),(33,213,313),(34,214,314),(35,215,315),
(36,216,316),(37,217,317),(38,218,318),(39,219,319),(40,220,320),
(41,201,301),(42,202,302),(43,203,303),(44,204,304),(45,205,305),
(46,206,306),(47,207,307),(48,208,308),(49,209,309),(50,210,310);


-- Insert sample data into the 'route_staff' table
-- Many-to-many relationship: assigns staff members to routes
INSERT INTO route_staff VALUES
(1,201,401),(2,202,402),(3,203,403),(4,204,404),(5,205,405),
(6,206,406),(7,207,407),(8,208,408),(9,209,409),(10,210,410),
(11,211,411),(12,212,412),(13,213,413),(14,214,414),(15,215,415),
(16,216,416),(17,217,417),(18,218,418),(19,219,419),(20,220,420),
(21,201,401),(22,202,402),(23,203,403),(24,204,404),(25,205,405),
(26,206,406),(27,207,407),(28,208,408),(29,209,409),(30,210,410),
(31,211,411),(32,212,412),(33,213,413),(34,214,414),(35,215,415),
(36,216,416),(37,217,417),(38,218,418),(39,219,419),(40,220,420),
(41,201,401),(42,202,402),(43,203,403),(44,204,404),(45,205,405),
(46,206,406),(47,207,407),(48,208,408),(49,209,409),(50,210,410);

-- Insert sample data into the 'route_booking' table
-- Many-to-many relationship: links bookings to routes
INSERT INTO route_booking VALUES
(1,201,501),(2,202,502),(3,203,503),(4,204,504),(5,205,505),
(6,206,506),(7,207,507),(8,208,508),(9,209,509),(10,210,510),
(11,211,511),(12,212,512),(13,213,513),(14,214,514),(15,215,515),
(16,216,516),(17,217,517),(18,218,518),(19,219,519),(20,220,520),
(21,201,501),(22,202,502),(23,203,503),(24,204,504),(25,205,505),
(26,206,506),(27,207,507),(28,208,508),(29,209,509),(30,210,510),
(31,211,511),(32,212,512),(33,213,513),(34,214,514),(35,215,515),
(36,216,516),(37,217,517),(38,218,518),(39,219,519),(40,220,520),
(41,201,501),(42,202,502),(43,203,503),(44,204,504),(45,205,505),
(46,206,506),(47,207,507),(48,208,508),(49,209,509),(50,210,510);

-- Insert sample data into the 'route_ticket' table
-- Many-to-many relationship: links tickets to routes
INSERT INTO route_ticket VALUES
(1,201,601),(2,202,602),(3,203,603),(4,204,604),(5,205,605),
(6,206,606),(7,207,607),(8,208,608),(9,209,609),(10,210,610),
(11,211,611),(12,212,612),(13,213,613),(14,214,614),(15,215,615),
(16,216,616),(17,217,617),(18,218,618),(19,219,619),(20,220,620),
(21,201,601),(22,202,602),(23,203,603),(24,204,604),(25,205,605),
(26,206,606),(27,207,607),(28,208,608),(29,209,609),(30,210,610),
(31,211,611),(32,212,612),(33,213,613),(34,214,614),(35,215,615),
(36,216,616),(37,217,617),(38,218,618),(39,219,619),(40,220,620),
(41,201,601),(42,202,602),(43,203,603),(44,204,604),(45,205,605),
(46,206,606),(47,207,607),(48,208,608),(49,209,609),(50,210,610);

-- Insert sample data into the 'route_payment' table
-- Many-to-many relationship: links payments to routes
INSERT INTO route_payment VALUES
(1,201,701),(2,202,702),(3,203,703),(4,204,704),(5,205,705),
(6,206,706),(7,207,707),(8,208,708),(9,209,709),(10,210,710),
(11,211,711),(12,212,712),(13,213,713),(14,214,714),(15,215,715),
(16,216,716),(17,217,717),(18,218,718),(19,219,719),(20,220,720),
(21,201,701),(22,202,702),(23,203,703),(24,204,704),(25,205,705),
(26,206,706),(27,207,707),(28,208,708),(29,209,709),(30,210,710),
(31,211,711),(32,212,712),(33,213,713),(34,214,714),(35,215,715),
(36,216,716),(37,217,717),(38,218,718),(39,219,719),(40,220,720),
(41,201,701),(42,202,702),(43,203,703),(44,204,704),(45,205,705),
(46,206,706),(47,207,707),(48,208,708),(49,209,709),(50,210,710);