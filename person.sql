-- Create a table called person that records a person’s id, name, age, height (in cm , city, favorite_color. id should be an auto-incrementing id/primary key (use type: SERIAL)
CREATE TABLE person (
    person_id SERIAL PRIMARY KEY,
    name VARCHAR(20),
    age INTEGER,
    height INTEGER,
    city VARCHAR(20),
    fav_color VARCHAR(20)
);

-- Add 5 different people into the person database. Remember to not include the person_id because it should auto-increment.
INSERT INTO person (name, age, height, city, fav_color)
    VALUES ('John', 24, 170, 'Phoenix', 'Red')

INSERT INTO person (name, age, height, city, fav_color)
    VALUES ('Bob', 33, 180, 'Gilbert', 'Green')

INSERT INTO person (name, age, height, city, fav_color)
    VALUES ('Mary', 30, 168, 'Mesa', 'White')

INSERT INTO person (name, age, height, city, fav_color)
    VALUES ('June', 36, 155, 'Phoenix', 'Purple')

INSERT INTO person (name, age, height, city, fav_color)
    VALUES ('Rodrigo', 28, 177, 'Chandler', 'Blue')

-- Select all the people in the person table by height from tallest to shortest.
SELECT * FROM person ORDER BY height DESC

-- Select all the people in the person table by height from shortest to tallest.
SELECT * FROM person ORDER BY height ASC

-- Select all the people in the person table by age from oldest to youngest.
SELECT * FROM person ORDER BY age DESC

-- Select all the people in the person table older than age 20.
SELECT * FROM person WHERE age >20

-- Select all the people in the person table that are exactly 18.
SELECT * FROM person WHERE age = 20

-- Select all the people in the person table that are less than 20 and older than 30.
SELECT * FROM person WHERE age < 20 AND age > 30

-- Select all the people in the person table that are not 27 (use not equals).
SELECT * FROM person WHERE age != 27

-- Select all the people in the person table where their favorite color is not red.
SELECT * FROM person WHERE fav_color != 'Red'

-- Select all the people in the person table where their favorite color is not red and is not blue.
SELECT * FROM person WHERE fav_color != 'Red' AND fav_color != "Blue"

-- Select all the people in the person table where their favorite color is orange or green.
SELECT * FROM person WHERE fav_color = 'Orange' OR fav_color = "Green"

-- Select all the people in the person table where their favorite color is orange, green or blue (use IN).
SELECT * FROM person WHERE fav_color IN ('Orange', 'Green', 'Blue')

-- Select all the people in the person table where their favorite color is yellow or purple (use IN).
SELECT * FROM person WHERE fav_color IN ('Yellow', 'Purple')