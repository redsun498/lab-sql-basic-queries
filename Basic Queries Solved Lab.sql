#1. Display all available tables in the Sakila database.

show tables;

#2.Retrieve all the data from the tables actor, film and customer

select * 
from actor;
select * 
from film;
select * 
from customer;

#3. Retrieve the following columns from their respective tables:
#3.1 Titles of all films from the film table
select title
from film;
#3.2 List of languages used in films, with the column aliased as language from the language table
select name as language
from language;
#3.3 List of first names of all employees from the staff table
select * from staff;

#4. Retrieve unique release years.
select 
	distinct release_year
from film; 

#5 Counting records for database insights:

#5.1 Determine the number of stores that the company has.
select count(store_id) as 'Number of stores' from store;
#5.2 Determine the number of employees that the company has.
select count(staff_id) as 'Number of employees' from staff;
#5.3 Determine how many films are available for rent and how many have been rented.
select 
	count(rental_id) as 'Available films for rent' 
from rental 
where return_date is not null;  
#5.4 Determine the number of distinct last names of the actors in the database.
select 
	distinct count(last_name) as 'Number of distinct last names'
from actor;

#6. Retrieve the 10 longest films.
select * from film
order by length desc
limit 10;

#7. Use filtering techniques in order to:
#7.1 Retrieve all actors with the first name "SCARLETT".
select * from actor 
where first_name = 'Scarlett';

#7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
select * from film 
where length > 100 and title like '%ARMAGEDDON%'; 

#7.3 Determine the number of films that include Behind the Scenes content
select count(film_id) as 'Number of films with BTS' from film
where special_features like '%Behind the Scenes%'