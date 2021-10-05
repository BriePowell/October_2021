-- Question 1
SELECT COUNT(last_name) AS total
FROM actor
WHERE last_name LIKE 'Wahlberg';
--Answer: 2


--Question 2
SELECT COUNT(amount)
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;
--Answer: 5607


--Question 3
SELECT COUNT(film_id)
FROM inventory;
--Answer: 4581 (double check that)


--Question 4
SELECT COUNT(last_name)
FROM customer
WHERE last_name LIKE 'William';
--Answer: 0


--Question 5 - What store employee (get the id) sold the most rentals? 
--SELECT rental_id
--FROM rental, staff
--GROUP BY first_name, SUM(rental_id)
--This block needs WORK


--Question 6
SELECT district
FROM address
GROUP BY district;
--Answer: 378


--Question 7 What film has the most actors in it? (use film_actor table and get film_id)
SELECT *
FROM film_actor;

--Question 8 From store_id 1, how many customers have a last name ending with ‘es’? (use customer table) 
SELECT *
FROM store


--Question 9 How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers  with ids between 380 and 430? (use group by and having > 250) 
SELECT customer_id, COUNT(amount) as number_of_payments
FROM payment
HAVING customer_id BETWEEN 380 and 430
GROUP BY amount 
HAVING COUNT(*) > 250
ORDER BY number_of_payments;
--Answer: 

--Question 10
SELECT rating, COUNT(film)
FROM film
GROUP BY rating;
--ANSWER: 5, PG-13 (223)