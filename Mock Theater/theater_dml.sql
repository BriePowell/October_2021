INSERT INTO customer(
	customer_id,
	num_tickets,
	price_total,
	member_id,
	rewards_pts
) VALUES(
	'1234',
	'3',
	'21'
	'3340',
	'55'
),

(
	'7789',
	'5',
	'35',
	'1744',
	'1288'
);
--ERROR: INSERT has more target columns than expressions
-- ---------------------------------------------------------------------------

INSERT INTO box_office(
	ticket_price,
	tickets_sold1,
	tickets_sold2,
	tickets_sold3,
	movie_title,
	show_times,
	rating
) VALUES (
	'7',
	'55',
	'25',
	'15',
	'The Fall',
	'12:30'
	'R'
); (
	'7',
	'75',
	'50',
	'100',
	'Homecoming',
	'11:00',
	'PG-13'
);
-- ----------------------------------------------------------------------------------------


