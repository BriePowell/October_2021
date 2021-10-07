--Question 1: all customers in Texas
SELECT customer.customer_id, first_name, last_name, email ,address, city, district country
FROM customer
JOIN address
ON customer.address_id = address.address_id
JOIN city
ON city.city_id = address.city_id
JOIN country
ON country.country_id = city.country_id
WHERE country '%exas'
--Answer:


--Question 2: all payments above 6.99
SELECT amount, customer.first_name, customer.last_name
FROM payment
JOIN customer
ON payment.customer_id = customer.customer_id
WHERE amount > 6.99;
--Answer: 1406 payments > $6.99 (double check)


--Question 3:customer names with payments > 175
SELECT first_name, last_name
FROM customer
WHERE customer_id IN (
	SELECT customer_id --select clause can only have one column, you're grabbing the values related to one column
	FROM payment
	GROUP BY customer_id
	HAVING SUM(amount) > 175
	ORDER BY SUM(amount) DESC
);
--Answer; 6 customers (R.K., C.S., E.H., M.S., T.C., K.S.)


--Question 4: all customers in Nepal (city)
SELECT customer.customer_id, first_name, last_name, email ,address, city, district country
FROM customer
JOIN address
ON customer.address_id = address.address_id
JOIN city
ON city.city_id = address.city_id
JOIN country
ON country.country_id = city.country_id
WHERE city = 'Nepal'
--Answer:


--5: Which staff member had the most transactions?
SELECT COUNT(rental_id)
FROM payment
GROUP BY staff_id;
--ANSWER: Staff member #2 with 7,304 transactions


--6:What film had the most actors in it?
SELECT title, film_actor.film_id, actor.actor_id, actor.first_name, actor.last_name
FROM film_actor
JOIN film
ON film.film_id = film_actor.film_id
JOIN actor
ON actor.actor_id = film.film_id
GROUP BY film.title
ORDER BY COUNT(actor);
--ANSWER: 


--7: Which actor has been in the least movies?
SELECT actor_id, COUNT(*)
FROM film_actor
GROUP BY actor_id
ORDER BY COUNT(actor_id) ASC;
--Answer: Actor 148 in 14 films   -I can join actor for names..


--Question 8: How many districts have more than 5 customers?
SELECT district, COUNT(*)
FROM address
GROUP BY district
HAVING COUNT(district) > 5;
--Answer: 9 districts have more than 5 customers

















