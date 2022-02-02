    #Using the rental table, find out how many rentals were processed by each employee.
    SELECT staff_id, count(*) as sum_ri
	FROM rental
	group by staff_id;
    
    #Using the film table, find out how many films were released.
   select count(title) as sum_films
   from film;
#Using the film table, find out how many films there are of each rating. Sort the results in descending order of the number of films.
select rating, count(title) as tot_title
from film
group by rating
order by tot_title desc;
#Which kind of movies (rating) have a mean duration of more than two hours?

select rating, avg(length) as mean_length
from film
group by rating 
having mean_length > '120';

 