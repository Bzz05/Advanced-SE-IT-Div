CREATE DATABASE Movies
USE Movies

CREATE TABLE Customer (
    Customer_ID int PRIMARY KEY,
    Customer_Name varchar(250),
    Customer_Email varchar(250),
    Customer_Password varchar(250),
);


CREATE TABLE Movie (
    Movie_ID varchar(20) PRIMARY KEY
);


CREATE TABLE Room (
    Room_ID int PRIMARY KEY,
    Movie_ID varchar(20),
    Room_SeatCapacity int,
    Room_Type int,
    Room_Name varchar(250),
    FOREIGN KEY (Movie_ID) REFERENCES Movie(Movie_ID)
);

CREATE TABLE Booking (
    Booking_ID int IDENTITY(1,1) PRIMARY KEY,
    Customer_ID int not null,
    Booking_Quantity int not null,
    Movie_ID varchar(20) not null,
    FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID),
    FOREIGN KEY (Movie_ID) REFERENCES Movie(Movie_ID)
);

CREATE TABLE Ticket (
    Ticket_ID int PRIMARY KEY,
    Booking_ID int,
    Ticket_Number int,
    Ticket_Price decimal(4,2),
    FOREIGN KEY (Booking_ID) REFERENCES Booking(Booking_ID)
);

CREATE TABLE Seats (
    Seats_ID int IDENTITY(1,1) PRIMARY KEY,
    Ticket_ID int not null,
    Room_ID int not null,
    Seat_Number int not null,
    Seat_IsAvailable bit not null, 
    FOREIGN KEY (Room_ID) REFERENCES Room(Room_ID),
    FOREIGN KEY (Ticket_ID) REFERENCES Ticket(Ticket_ID)
);

INSERT into Movie (Movie_ID) 
values('tt0816692'),
('tt1130884'),
('tt15398776'), 
('tt16428256'), 
('tt1856101'), 
('tt5311514');

INSERT INTO Seats 
VALUES 
							(1, 2, 1, 1, 1),
							(2, 2, 1, 2, 1),
							(3, 2, 1, 3, 0),
							(4, 2, 1, 4, 1),
							(5, 2, 1, 5, 1),
							(6, 2, 1, 6, 0),
							(7, 2, 1, 7, 1),
							(8, 2, 1, 8, 0),
							(9, 2, 1, 9, 1),
							(10, 2, 1, 10, 1),
							(11, 2, 1, 11, 0),
							(12, 2, 1, 12, 1),
							(13, 2, 1, 13, 0),
							(14, 2, 1, 14, 1),
							(15, 2, 1, 15, 0),
							(16, 2, 1, 16, 1),
							(17, 2, 1, 17, 0),
							(18, 2, 1, 18, 1),
							(19, 2, 1, 19, 0),
							(20, 2, 1, 20, 1),
							(21, 2, 1, 21, 0),
							(22, 2, 1, 22, 1),
							(23, 2, 1, 23, 1),
							(24, 2, 1, 24, 1),
							(25, 2, 1, 25, 0),
							(26, 2, 1, 26, 1),
							(27, 2, 1, 27, 0),
							(28, 2, 1, 28, 1),
							(29, 2, 1, 29, 0),
							(30, 2, 1, 30, 1),
							(31, 2, 1, 31, 0),
							(32, 2, 1, 32, 1),
							(33, 2, 1, 33, 1),
							(34, 2, 1, 34, 0),
							(35, 2, 1, 35, 0),
							(36, 2, 1, 36, 1),
							(37, 2, 1, 37, 1),
							(38, 2, 1, 38, 1),
							(39, 2, 1, 39, 1),
							(40, 2, 1, 40, 1),
							(41, 2, 1, 41, 0),
							(42, 2, 1, 42, 1),
							(43, 2, 1, 43, 1),
							(44, 2, 1, 44, 0),
							(45, 2, 1, 45, 0),
							(46, 2, 1, 46, 1),
							(47, 2, 1, 47, 1),
							(48, 2, 1, 48, 1),
							(49, 2, 1, 49, 0),
							(50, 2, 1, 50, 0),
							(51, 2, 1, 51, 0),
							(52, 2, 1, 52, 1),
							(53, 2, 1, 53, 0),
							(54, 2, 1, 54, 1),
							(55, 2, 1, 55, 1),
							(56, 2, 1, 56, 0),
							(57, 2, 1, 57, 1),
							(58, 2, 1, 58, 0),
							(59, 2, 1, 59, 1),
							(60, 2, 1, 60, 1);