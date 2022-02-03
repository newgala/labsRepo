# Write a query to display for each store its store ID, city and country
USE Sakila;
SELECT store_id, city, country
FROM store s
JOIN address a
USING (address_id)
JOIN city ci
USING (city_id)
JOIN country co
USING (country_id)
GROUP BY store_id;

#Write a query to display how much benefit amount, in dollars, each store brought in.
SELECT store_id, concat('$', sum(amount)) as benefit_amount
FROM PAYMENT
JOIN staff sta
USING (staff_id)
JOIN store sto
USING (store_id)
GROUP BY store_id;

#What is the average running time of films by category?
use sakila;
select category_id, avg(length) as avg_time
from film
JOIN film_category
USING (film_id)
group by category_id;

#Which film categories are longest on average?
select category_id, avg(length) as longest
FROM film
JOIN film_category
USING (film_id)
group by category_id
order by avg(length)desc;

#Display the most frequently rented movies in descending order.
select title as most_frequently_rented, count(rental_id) as tot_rental_times
from film
JOIN inventory
USING (film_id)
JOIN rental
USING (inventory_id)
group by title
order by tot_rental_times DESC;

