LOAD DATA INFILE 'C:/Users/PATH/room.csv'
INTO TABLE EwanHotelDB.room 
FIELDS TERMINATED BY ',';

LOAD DATA INFILE 'C:/Users/PATH/guest.csv'
INTO TABLE EwanHotelDB.guest 
FIELDS TERMINATED BY ',';

LOAD DATA INFILE 'C:/Users/PATH/amenity.csv'
INTO TABLE EwanHotelDB.amenity 
FIELDS TERMINATED BY ',';

LOAD DATA INFILE 'C:/Users/PATH/reservation.csv'
INTO TABLE EwanHotelDB.reservation 
FIELDS TERMINATED BY ',';

delete from guest where name = 'Jeremiah Pendergrass'; 