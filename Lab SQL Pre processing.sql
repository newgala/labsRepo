# Select all the actors with the first name "Scarlett"
    select* from actor
    where first_name = 'Scarlett';
   # How many films (movies) are available for rent and how many films have been rented?
    select count(inventory_id) as film_available from inventory;
    select count(rental_id) as  film_rented from rental;
    #What are the shortest and longest movie duration? Name the values max_duration and min_duration.
    select max(length) as max_duration from film ;
    select min(length) as min_duration from film ;
    #What's the average movie duration expressed in format (hours, minutes)?
    SELECT floor(AVG(length)/60) as hour_film, round(AVG(length)%60) as minute_film from film;
    # How many distinct (different) actors' last names are there?
   select count(distinct( last_name)) from actor;
# Since how many days has the company been operating (check DATEDIFF() function)?
 select min(rental_date) from rental;
 select (rental_date) from rental;
SELECT DATEDIFF(current_date(), min(rental_date)) as operating_days from rental; 
# Show rental info with additional columns month and weekday. Get 20 results.
SELECT*,
date_format(rental_date,'%m') as month, date_format(rental_date,'%W') from rental
limit 20;
# Add an additional column day_type with values 'weekend' and 'workday' depending on the rental day of the week.
SELECT*,
date_format(rental_date,'%m') as month,
date_format(rental_date,'%W') as weekday,
case
when date_format(rental_date,'%W') = 'Saturday' or 'Sunday' 
then 'Weekend'
else 'Workday'
end as WK from rental;
# How many rentals were in the last month of activity?
select max(rental_date) from rental;
select COUNT(rental_id) as last_month_rentals from rental where rental_date > '2006-02-14 15:16:03' - interval 1 MONTH;
