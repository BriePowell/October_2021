--Question 1: all customers in Texas
SELECT customer_id, first_name, last_name, email, district
FROM customer
Join address
ON customer.address_id = address.address_id
WHERE address.district = 'Texas';
--Answer: 5 (J.D., K.C., R.M., B.H., I.S.)


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
SELECT country.country_id, country.country, customer.first_name, customer.last_name
FROM country
JOIN city
ON country.country_id = city.country_id
JOIN address
ON city.city_id = address.city_id
JOIN customer
ON address.address_id = customer.address_id
WHERE country = 'Nepal';
--Answer: Kevin Schuler


--5: Which staff member had the most transactions?
SELECT COUNT(rental_id)
FROM payment
GROUP BY staff_id;
--Answer: Staff member #2 (John Stephens) with 7,304 transactions


--6:What film had the most actors in it?
SELECT f.film_id, f.title, COUNT(*) as number_of_actors
FROM film_actor as f_a
JOIN film as f
ON f_a.film_id = f.film_id
GROUP BY f.film_id
Order BY number_of_actors DESC;
--Answer: Lambs Cincinatti, 15 actors


--7: Which actor has been in the least movies?
SELECT actor_id, COUNT(*)
FROM film_actor
GROUP BY actor_id
ORDER BY COUNT(actor_id) ASC;
--Answer: Actor 148 in 14 films


--Question 8: How many districts have more than 5 customers?
SELECT district, COUNT(*)
FROM address
GROUP BY district
HAVING COUNT(district) > 5;
--Answer: 9 districts have more than 5 customers

















