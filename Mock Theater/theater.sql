--Create customer table
CREATE TABLE customer(
	customer_id SERIAL PRIMARY KEY,
	num_tickets INTEGER,
	price_total NUMERIC(6,2),
	member_id INTEGER,
	rewards_pts INTEGER
);
--Create box office table
CREATE TABLE box_office(
	ticket_price NUMERIC(6,2),
	tickets_sold1 INTEGER,
	tickets_sold2 INTEGER,
	tickets_sold3 INTEGER,
	movie_title VARCHAR(100),
	show_time TIME,
	rating VARCHAR(5)
);
--Create theater table
CREATE TABLE theater(
	theater_1 INTEGER,
	theater_2 INTEGER,
	theater_3 INTEGER
);
--Create concession table
CREATE TABLE concessions(
	inventory_id INTEGER,
	item_price NUMERIC(6,2),
	quantity_out INTEGER,
	amount NUMERIC(6,2)
);
--Create order table
CREATE TABLE order(
	order_number SERIAL PRIMARY KEY,
	--customer_id (foreign key)
	--price_total (foreign key)
)


