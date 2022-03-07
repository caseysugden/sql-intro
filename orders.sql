In the orders.sql file, write out the code for the following problems:

-- 1 Create a table called orders that records: order_id, person_id, product_name, product_price, quantity.
CREATE TABLE orders(
    order_id SERIAL PRIMARY KEY,
    person_id SERIAL,
    product_name VARCHAR(255),
    product_price FLOAT,
    quantity INTEGER
)
-- 2 Add 5 orders to the orders table.
--      A Make orders for at least two different people.
--      B person_id should be different for different people.
INSERT INTO orders (person_id, product_name, product_price, quantity)
VALUES (1, 'iPad Pro', 999.99, 1),
(1, 'Magic Keyboard', 249.99, 1),
(1, 'Magic Pencil', 119.99, 1);
INSERT INTO orders (product_name, product_price, quantity)
VALUES ('Nintendo Switch Joycons', 59.99, 2),
('Nintendo Switch', 349.99, 1);
-- 3 Select all the records from the orders table.
SELECT * FROM orders;
-- 4 Calculate the total number of products ordered.
SELECT SUM(quantity) FROM orders;
-- 5 Calculate the total order price.
SELECT SUM(product_price) FROM orders;
-- 6 Calculate the total order price by a single person_id.
SELECT SUM(product_price) FROM orders
GROUP BY COUNT(person_id);