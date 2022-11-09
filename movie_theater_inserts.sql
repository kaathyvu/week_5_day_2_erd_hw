INSERT INTO "movies" (title, genre, runtime, rating) VALUES
	('Finding Nemo', 'family', 100, 'G'),
	('Avengers: Endgame', 'action', 182, 'PG-13'),
	('Spirited Away', 'fantasy', 125, 'PG');

INSERT INTO "customer" (
	first_name,
	last_name,
	address,
	billing_info,
	email
) VALUES (
	'Kathy',
	'Vu',
	'123 Potato Street, Boston, MA 02124',
	'1234 5678 9123 4567 111 11/2023',
	'kay.vu13@gmail.com'
);

INSERT INTO "customer" (
	first_name,
	last_name,
	address,
	billing_info,
	email
) VALUES (
	'Michael',
	'Scott',
	'123 Office Street, Boston, MA 02124',
	'1234 5678 9012 2345 111 12/2023',
	'mscott@dundermifflin.com'
);

INSERT INTO "customer" (
	first_name,
	last_name,
	address,
	billing_info,
	email
) VALUES (
	'John',
	'Doe',
	'123 Smith Street, Boston, MA 02124',
	'1111 2222 3333 4444 555 1/2024',
	'regulardude@gmail.com'
);

INSERT INTO "concessions" ("name", price, category) VALUES
	('Hotdog', 6.99, 'Food'),
	('Pizza', 6.99, 'Food'),
	('Twix', 1.99, 'Candy'),
	('Snickers', 1.99, 'Candy'),
	('Sour Patch Kids', 1.99, 'Candy'),
	('Popcorn', 7.99, 'Food'),
	('Soda', 2.99, 'Drink');

INSERT INTO "showtimes" (room_id, movie_id) VALUES
	(1, 1),
	(2, 2),
	(3, 3),
	(4, 1),
	(5, 2),
	(6, 3);

INSERT INTO "ticket" (
	customer_id,
	price,
	show_id,
	movie_id
) VALUES (
	1,
	15.99,
	3,
	3
);


INSERT INTO "ticket" (
	customer_id,
	price,
	show_id,
	movie_id
) VALUES (
	2,
	15.99,
	4,
	1
);

INSERT INTO "ticket" (
	customer_id,
	price,
	show_id,
	movie_id
) VALUES (
	3,
	15.99,
	5,
	2
);

INSERT INTO "order_" (
	ticket_id,
	item_id,
	total_price,
	tax,
	customer_id
) VALUES (
	1,
	2,
	23.98,
	5,
	1
);

INSERT INTO "order_" (
	ticket_id,
	item_id,
	total_price,
	tax,
	customer_id
) VALUES (
	2,
	1,
	29.98,
	6.00,
	2
);

INSERT INTO "order_" (
	ticket_id,
	total_price,
	tax,
	customer_id
) VALUES (
	3,
	18.99,
	3.00,
	3
);

INSERT INTO "concessions" ("name", price, category) VALUES
	('Popcorn', 7.99, 'Food'),
	('Popcorn', 7.99, 'Food'),
	('Soda', 2.99, 'Drink'),
	('Soda', 2.99, 'Drink');