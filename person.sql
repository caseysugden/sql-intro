-- 1 Create a table called person that records a person’s id, name, age, height (in cm , city, favorite_color. id should be an auto-incrementing id/primary key (use type: SERIAL)
CREATE TABLE person(
    id SERIAL PRIMARY KEY,
    name VARCHAR(40),
    age INTEGER,
    height INTEGER,
    city VARCHAR(40),
    favorite_color VARCHAR(20)
);
-- 2 Add 5 different people into the person database. Remember to not include the person_id because it should auto-increment.
INSERT INTO person (name, age, height, city, favorite_color)
VALUES ('jack', 17, 190, 'springfield', 'yellow'),
('jill', 16, 160, 'springfield', 'green'),
('tom', 25, 200, 'indianapolis', 'blue'),
('sarah', 45, 155, 'new york', 'blue'),
('nick', 72, 160, 'tampa bay', 'red');
-- 3 Select all the people in the person table by height from tallest to shortest.
SELECT person FROM person
ORDER BY height DESC;
-- 4 Select all the people in the person table by height from shortest to tallest.
SELECT person FROM person
ORDER BY height ASC;
-- 5 Select all the people in the person table by age from oldest to youngest.
SELECT person FROM person
ORDER BY age DESC;
-- 6 Select all the people in the person table older than age 20.
SELECT person FROM person
WHERE age > 20;
-- 7 Select all the people in the person table that are exactly 18.
SELECT person FROM person
WHERE age = 20;
-- 8 Select all the people in the person table that are less than 20 and older than 30.
SELECT person FROM person
WHERE age NOT BETWEEN 20 AND 30;
-- 9 Select all the people in the person table that are not 27 (use not equals).
SELECT person FROM person
WHERE age <> 27;
-- 10 Select all the people in the person table where their favorite color is not red.
SELECT person FROM person
WHERE favorite_color <> 'red';
-- 11 Select all the people in the person table where their favorite color is not red and is not blue.
SELECT person FROM person
WHERE favorite_color <> 'red' AND favorite_color <> 'blue';
-- 12 Select all the people in the person table where their favorite color is orange or green.
SELECT person FROM person
WHERE favorite_color = 'orange' OR favorite_color = 'blue';
-- 13 Select all the people in the person table where their favorite color is orange, green or blue (use IN).
SELECT person FROM person
WHERE favorite_color IN ('orange', 'green', 'blue');
-- 14 Select all the people in the person table where their favorite color is yellow or purple (use IN).
SELECT person FROM person
WHERE favorite_color IN ('yellow', 'purple');
