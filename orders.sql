-- Create a table called orders that records: order_id, person_id, product_name, product_price, quantity.
CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    person_id INTEGER,
    product_name VARCHAR(30),
    product_price INTEGER,
    quantity INTEGER
);

-- Add 5 orders to the orders table.
-- a. Make orders for at least two different people.

-- b. person_id should be different for different people.
INSERT INTO orders (person_id, product_name, product_price, quantity)
    VALUES (1, 'Burger', 8, 1);

INSERT INTO orders (person_id, product_name, product_price, quantity)
    VALUES (1, 'Water', 1, 1);

INSERT INTO orders (person_id, product_name, product_price, quantity)
    VALUES (2, 'Pizza', 10, 1);

INSERT INTO orders (person_id, product_name, product_price, quantity)
    VALUES (2, 'Wings', 5, 1);

INSERT INTO orders (person_id, product_name, product_price, quantity)
    VALUES (2, 'Pasta', 6, 1);

-- Select all the records from the orders table.
SELECT * FROM orders;

-- Calculate the total number of products ordered.
SELECT SUM(quantity) from orders;

-- Calculate the total order price.
SELECT SUM(product_price) from orders;

-- Calculate the total order price by a single person_id.
SELECT SUM(product_price) from orders WHERE person_id = 1;

SELECT SUM(product_price) from orders WHERE person_id = 2;