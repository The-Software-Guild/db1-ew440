DROP DATABASE IF EXISTS EwanHotelDB;

CREATE DATABASE EwanHotelDB;

USE EwanHotelDB;

CREATE OR REPLACE TABLE room (
    number INT NOT NULL,
    type VARCHAR(30) NOT NULL,
    ada_accessible BOOLEAN,
	 standard_occupancy INT,
	 maximum_occupancy INT,
    base_price DOUBLE,
    extra_person_price DOUBLE,
    CONSTRAINT room PRIMARY KEY(number)
);

CREATE TABLE guest (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL,
    address VARCHAR(30),
	city VARCHAR(30),
	state VARCHAR(30),
	zip CHAR(8),
    phone VARCHAR(20),
	CONSTRAINT guest PRIMARY KEY (id)
);

CREATE TABLE amenity (
   room_number INT,
   has_microwave BOOLEAN,
	has_fridge BOOLEAN,
	has_jacuzzi BOOLEAN,
	has_oven BOOLEAN,
	CONSTRAINT `fk_room_number`
   FOREIGN KEY (room_number) REFERENCES room(number)
   ON DELETE CASCADE
   ON UPDATE RESTRICT  
);

CREATE TABLE reservation (
	id INT PRIMARY KEY,
   room_number INT,
   guest_id INT,
	adults int,
	children int,
	start_date date,
	end_date date,
   FOREIGN KEY (room_number) REFERENCES room(NUMBER),
   FOREIGN KEY (guest_id) REFERENCES guest(id)
);