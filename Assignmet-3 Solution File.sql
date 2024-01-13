#Rquired Database 
use mavenmovies;

-- Q1 List all actors in the actor table, including their first names and last names.

-- Required Table:
SELECT * FROM actor;

-- Query/Solutions:
SELECT 
    first_name, last_name
FROM
    actor;  

-- Q2 List the cities and their last update timestamps from the "city" table.

-- Required Table:
SELECT * FROM city;

SELECT 
    city, last_update
FROM
    city;

-- Q3 Find films with titles containing the word 'Action'.

-- Required Table:
SELECT * FROM film;

-- Query/Solutions:
SELECT 
    title
FROM
    film
WHERE
    title LIKE '%Action%';

-- Q4 Retrieve customers whose email addresses do not include 'hotmail.com'.

-- Required Table:
select * from customer;

-- Query/Solutions:
SELECT 
    email
FROM
    customer
WHERE
    email NOT LIKE '%hotmail.com%';

-- Q5 List the film titles and their rental durations from the "film" table, along with the corresponding category names.

-- Required Table:
select * from film;
select * from  category;

-- Query/Solutions:
SELECT 
    f.title, f.rental_duration, c.name AS category_names
FROM
    film f
        INNER JOIN
    film_category fc ON f.film_id = fc.film_id
        INNER JOIN
    category c ON fc.category_id = c.category_id;

-- Q6 Retrieve customer names and their payments  from the "customer" and "payment" tables.   

-- Required Table:
select * from customer;
select * from payment;

-- Query/Solutions:
SELECT 
    c.first_name, c.last_name, p.amount
FROM
    customer c
        LEFT JOIN
    payment p ON c.customer_id = p.customer_id
ORDER BY amount ASC;
