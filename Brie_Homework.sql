-- Question 1
SELECT COUNT(last_name) AS total
FROM actor
WHERE last_name LIKE 'Wahlberg';
--Answer: 2


--Question 2
SELECT COUNT(*)
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;
--Answer: 5607


--Question 3
SELECT film_id, COUNT(*) as total_films
FROM inventory
GROUP BY film_id
ORDER BY total_films DESC
LIMIT 1;
--Answer: film id: 350 (72 films with 8 copies in inventory)


--Question 4
SELECT *
FROM customer
WHERE last_name = 'William';
--Answer: 0, no customers with the last name 'William'


--Question 5 
SELECT staff_id, COUNT(*)
FROM rental
GROUP BY staff_id;
--Answer: Employee # 1 sold more, with 8040 rentals


--Question 6
SELECT district
FROM address
GROUP BY district;
--Answer: 378


--Question 7
SELECT film_id, count(*) as num_actors
FROM film_actor
GROUP BY film_id
ORDER BY num_actors DESC
LIMIT 1;
--Answer: Film # 508 with 15 actors


--Question 8
SELECT *
FROM customer
WHERE store_id = 1 AND last_name LIKE '%es';
--Answer: 13


--Question 9 
SELECT COUNT(rental_id), amount
FROM payment
WHERE customer_id BETWEEN 380 AND 430
GROUP BY amount
HAVING COUNT (rental_id) > 250
--Answer: 3 (2.99, 4.99, 0.99)

--Question 10
SELECT rating, COUNT(film)
FROM film
GROUP BY rating;
--ANSWER: 5, PG-13 (223)