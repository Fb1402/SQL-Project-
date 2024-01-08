-- Rquired Database 
use mavenmovies; 

-- Q1 - From the following table, write a SQL query to find when the movie ‘Academy Dinosaur’ was released. Return movie release year.

-- Required Table:
SELECT * FROM film;

-- Query/Solutions:
SELECT 
    release_year
FROM
    film
WHERE
    title = 'Academy Dinosaur';
    
    
-- Q2 - Which company does William from Investors Table work in?  

-- Required Table:
select * from investor;

-- Query/Solutions:
SELECT 
    company_name
FROM
    investor
WHERE
    first_name = 'William';
    
    
-- Q3 - In the address table, there are multiple fields. What is the district with a city id of 463? 

-- Required Table:
select * from address;

-- Query/Solutions:
SELECT 
    district
FROM
    address
WHERE
    city_id = 463;
    
    
-- Q4 - What is the last name of the actor in the actor award table whose actor_id = 21

-- Required Table:
select * from actor_award;

-- Query/Solutions:
SELECT 
    last_name
FROM
    actor_award
WHERE
    actor_id = 21;
    
    
-- Q5 - Which is the country in the country table with a country_id of 104

-- Required Table:
select * from country;

-- Query/Solutions:
SELECT 
   country
FROM
    country
WHERE
    country_id = 104;
    
