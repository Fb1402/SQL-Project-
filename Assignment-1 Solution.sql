/*
Assignment-1
From the following table, write a SQL query to find when the movie ‘Academy Dinosaur’ was released. Return movie release year.
2) Which company does William from Investors Table work in? 
3) In the address table, there are multiple fields. What is the district with a city id of 463? 
4) What is the last name of the actor in the actor award table whose actor_id = 21
5) Which is the country in the country table with a country_id of 104
*/

#Rquired Database 
use mavenmovies; 

-- 1) From the following table, write a SQL query to find when the movie ‘Academy Dinosaur’ was released. Return movie release year.
SELECT * FROM film;

SELECT 
    release_year
FROM
    film
WHERE
    title = 'Academy Dinosaur';
    
    
#Que-2) Which company does William from Investors Table work in?  

#Required Table:
select * from investor;

#Query:
SELECT 
    company_name
FROM
    investor
WHERE
    first_name = 'William';
    
    
#Que-3 In the address table, there are multiple fields. What is the district with a city id of 463? 

#Required Table:
select * from address;

#Query:
SELECT 
    district
FROM
    address
WHERE
    city_id = 463;
    
    
#Que-4) What is the last name of the actor in the actor award table whose actor_id = 21

#Required Table:
select * from actor_award;

#Query:
SELECT 
    last_name
FROM
    actor_award
WHERE
    actor_id = 21;
    
    
#Que-5 Which is the country in the country table with a country_id of 104

#Required Table:
select * from country;

#Query:
SELECT 
   country
FROM
    country
WHERE
    country_id = 104;
    
