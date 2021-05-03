-- 1. How many actors are there with the last name ‘Wahlberg’? --

SELECT last_name
FROM actor
WHERE last_name = 'Wahlberg';

-- 2. How many payments were made between $3.99 and $5.99? --

SELECT payment_id
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;

-- 3. What film does the store have the most of? (search in inventory) --

SELECT film_id
FROM inventory
GROUP BY film_id
ORDER BY film_id;

-- 4. How many customers have the last name ‘William’? --

SELECT last_name
FROM customer
WHERE last_name = 'William';

-- 5. What store employee (get the id) sold the most rentals? --

SELECT staff_id
FROM rental
GROUP BY staff_id
ORDER BY COUNT(rental_ID) DESC;

-- 6. How many different district names are there? --

SELECT COUNT(district)
FROM address;

-- 7. What film has the most actors in it? (use film_actor table and get film_id) --
SELECT actor_id
FROM film_actor
GROUP BY film_id
ORDER BY COUNT(actor_id) DESC;

-- 8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table) --

SELECT customer_id, store_id, last_name
FROM customer
WHERE last_name LIKE '%es'

-- 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers with ids between 380 and 430? (use group by and having > 250) --

SELECT amount, COUNT(payment_id)
FROM payment
WHERE customer_id BETWEEN 380 and 430
GROUP BY amount
HAVING COUNT(payment_id) > 250;

-- 10. Within the film table, how many rating categories are there? And what rating has the most movies total? --

SELECT COUNT(rating)
FROM film;
SELECT rating, COUNT(film_id)
FROM film
GROUP BY rating
