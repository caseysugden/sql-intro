-- In the artist.sql file, write out the code for the following problems:

-- 1 Add 3 new artists to the artist table. (It already exists.)
INSERT INTO artist (name)
VALUES ('michael jackson'), ('bruno mars'), ('maroon 5');
-- 2 Select 10 artists in reverse alphabetical order.
SELECT * FROM artists
ORDER BY name DESC;
-- 3 Select 5 artists in alphabetical order.
SELECT * FROM artist
ORDER BY name
LIMIT 5;
-- 4 Select all artists that start with the word ‘Black’.
SELECT * FROM artist
LIKE 'BLACK';
-- 5 Select all artists that contain the word ‘Black’.
SELECT * FROM artist
IN ('Black');