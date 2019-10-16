CREATE TABLE persons(
    person_id SERIAL PRIMARY KEY,
    name VARCHAR(200),
    age INTEGER NOT NULL,
    height INTEGER NOT NULL,
    city VARCHAR(200),
    favorite_color VARCHAR(200)
);

INSERT INTO persons(name, age, height, city, favorite_color)
VALUES
('Mike', 25, 168, 'Denver', 'black'),
('Frank', 46, 150, 'San diego', 'green'),
('Bod', 25, 168, 'Atlanta', 'purple'),
('Charzard', 25, 168, 'Vegas', 'brown'),
('Fire', 25, 168, 'Hastings', 'yellow');

SELECT * FROM persons
ORDER BY height DESC

SELECT * FROM persons
ORDER BY height ASC

SELECT * FROM persons
ORDER BY age DESC

SELECT * FROM persons
WHERE age > 20

SELECT * FROM persons
WHERE age = 18

SELECT * FROM persons
WHERE age < 20 AND age >30

SELECT * FROM persons
WHERE age != 30

SELECT * FROM persons
WHERE favorite_color != 'red'

SELECT * FROM persons
WHERE favorite_color != 'red' AND favorite_color != 'blue'

SELECT * FROM persons
WHERE favorite_color = 'orange' OR favorite_color = 'green'

SELECT * FROM persons
WHERE favorite_color IN ('orange', 'blue', 'green');

SELECT * FROM persons
WHERE favorite_color IN ('yellow', 'blue');


CREATE TABLE orders(
    order_id SERIAL PRIMARY KEY,
    person_id INTEGER,
    product_name VARCHAR(200),
    product_price NUMERIC,
    quantity INTEGER
);

INSERT INTO orders (person_id, product_name, product_price, quantity)
VALUES

(1, 'fish', 5.50, 4),
(3, 'hot dog', 6.50, 5),
(5, 'beef', 2.50, 3),
(2, 'cherry', 9.50, 9),
(9, 'cat', 4.50, 7);

SELECT * FROM orders

SELECT SUM(quantity) FROM orders;

SELECT SUM(product_price) FROM orders;

SELECT SUM(person_id) FROM orders;
