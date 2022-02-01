#  Get all the data from tables actor, film and customer.
select* from actor; # date w time to order
select* from film; 
select* from customer; #order date format
# Get film titles
select title from film;
# Get unique list of film languages under the alias language. Note that we are not asking you to obtain the language per each film, but this is a good time to think about how you might get that information in the future.
select distinct (name) as language from language;
# 5.1 Find out how many stores does the company have?
SELECT COUNT(all store_id) FROM store; #2 stores?
# 5.2 Find out how many employees staff does the company have?
SELECT COUNT(staff_id) FROM staff; #2 employees
# 5.3 Return a list of employee first names only
select first_name from staff;

