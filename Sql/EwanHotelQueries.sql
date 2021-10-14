SELECT NAME,guest_id,NUMBER,start_date,end_date FROM room AS r 
INNER JOIN amenity a ON r.number = a.room_number
JOIN reservation re ON r.number = re.room_number
JOIN guest g ON g.id = re.guest_id
WHERE re.end_DATE between '2023/07/01' AND '2023/07/31';

SELECT NAME,NUMBER,start_date,end_date FROM room AS r 
INNER JOIN amenity a ON r.number = a.room_number
JOIN reservation re ON r.number = re.room_number
JOIN guest g ON g.id = re.guest_id
WHERE has_jacuzzi = 1;

SELECT NAME,NUMBER,start_date,end_date,(adults + children) AS guests FROM room AS r 
INNER JOIN amenity a ON r.number = a.room_number
JOIN reservation re ON r.number = re.room_number
JOIN guest g ON g.id = re.guest_id
WHERE NAME = 'Rupert Bear';

SELECT NAME,NUMBER,start_date,end_date,(adults + children) AS guests,
(base_price + ((adults+children)-standard_occupancy)*extra_person_price) AS price FROM room AS r 
INNER JOIN amenity a ON r.number = a.room_number
JOIN reservation re ON r.number = re.room_number
JOIN guest g ON g.id = re.guest_id

SELECT DISTINCT number FROM room AS r 
JOIN reservation re ON r.number = re.room_number
WHERE ((re.end_DATE between '2023/04/01' AND '2023/04/31' OR re.start_DATE between '2023/04/01' AND '2023/04/31')
OR (re.start_DATE < '2023/04/01' AND re.end_DATE > '2023/04/30'))
AND maximum_occupancy > 2;

SELECT NAME, COUNT(*) FROM room AS r 
INNER JOIN amenity a ON r.number = a.room_number
JOIN reservation re ON r.number = re.room_number
JOIN guest g ON g.id = re.guest_id
GROUP BY NAME

SELECT NAME, address, phone FROM guest AS r 
WHERE phone = '0800001066';