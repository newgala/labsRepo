# How many copies of the film Hunchback Impossible exist in the inventory system?
#n copies (film exist in inventory system)
select title, count(sub.inventory_copies) as inventory_copies  from 
(select title, inventory_id as inventory_copies
from film 
JOIN inventory USING (film_id)
where title = 'Hunchback Impossible'
group by inventory_id) as sub;
#List all films whose length is longer than the average of all the films.

select title, length as longer_than_average
from film 
where length > 
(select avg(length) from film);

# Use subqueries to display all actors who appear in the film Alone Trip
select title, first_name, last_name from
(select first_name, last_name,title
from actor
JOIN film_actor
USING (actor_id)
JOIN film
USING (film_id)
where title = 'Alone Trip') as sub;
# Sales have been lagging among young families, and you wish to target all family movies for a promotion. Identify all movies categorized as family films.
select title, name 
from film
JOIN film_category
USING (film_id)
JOIN category
USING(category_id)
WHERE name = 'Family';
# Get name and email from customers from Canada using subqueries. Do the same with joins. Note that to create a join, you will have to identify the correct tables with their primary keys and foreign keys, that will help you get the relevant information.
select name, email from
(select first_name as name, email, country
from customer
JOIN address
USING (address_id)
JOIN city
USING (city_id)
JOIN country
USING (country_id)
where country = 'Canada') as sub;
# Which are films starred by the most prolific actor? Most prolific actor is defined as the actor that has acted in the most number of films. First you will have to find the most prolific actor and then use that actor_id to find the different films that he/she starred.
SELECT title from
film
JOIN film_actor
USING (film_id)
JOIN actor
USING (actor_id) 
where actor_id = 
(select actor_id from actor
JOIN film_actor
USING(actor_id)
JOIN film
USING (film_id)
group by actor_id
having count(title)
ORDER BY count(title) desc
limit 1);
# Films rented by most profitable customer. You can use the customer table and payment table to find the most profitable customer ie the customer that has made the largest sum of payments
select title from film 
JOIN inventory
USING(film_id)
JOIN rental
USING (inventory_id)
where customer_id =
(select customer_id from customer
JOIN payment
USING (customer_id)
group by customer_id
ORDER BY sum(amount) DESC
limit 1);
# Get the client_id and the total_amount_spent of those clients who spent more than the average of the total_amount spent by each client.
select customer_id, sum(amount) from payment
group by customer_id
having sum(amount)>
(select avg(amount) from payment)
order by sum(amount) desc;
