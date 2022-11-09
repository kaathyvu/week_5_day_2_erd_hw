SELECT *
FROM concessions

ALTER TABLE concessions
ADD COLUMN "size" VARCHAR(15)

UPDATE concessions
SET "size" = 'Small'
WHERE item_id = 6

UPDATE concessions
SET "size" = 'Medium'
WHERE item_id = 8

UPDATE concessions
SET "size" = 'Large'
WHERE item_id = 9

UPDATE concessions
SET "size" = 'Small'
WHERE item_id = 7

UPDATE concessions
SET "size" = 'Medium'
WHERE item_id = 10

UPDATE concessions
SET "size" = 'Large'
WHERE item_id = 11

UPDATE concessions
SET "size" = 'One Size'
WHERE item_id BETWEEN 1 and 5

SELECT *
FROM showtimes

ALTER TABLE showtimes
ADD COLUMN "time_" TIME

UPDATE showtimes
SET "time_" = '12:00 PM'
WHERE show_id = 1

UPDATE showtimes
SET "time_" = '2:00 PM'
WHERE show_id = 2

UPDATE showtimes
SET "time_" = '4:00 PM'
WHERE show_id = 3

UPDATE showtimes
SET "time_" = '6:00 PM'
WHERE show_id = 4

UPDATE showtimes
SET "time_" = '8:00 PM'
WHERE show_id = 5

UPDATE showtimes
SET "time_" = '10:00 PM'
WHERE show_id = 6

UPDATE showtimes
SET "date" = CURRENT_DATE