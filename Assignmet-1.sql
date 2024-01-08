#Rquired Database 
use mavenmovies;

-- 1) How many last names in the list have a length of precisely six characters?

SELECT 
    COUNT(*)
FROM
    actor_award
WHERE
    LENGTH(last_name) = 6; 
    
-- 2) List the third name from the full names (concatenated first and last names) of actors who have received awards. Trim any extra spaces from the names.

SELECT 
    TRIM(CONCAT(first_name, ' ', last_name)) AS full_name
FROM
    actor_award
WHERE
    awards IS NOT NULL
LIMIT 3;

-- 3) Write an SQL query to determine the total number of unique films (distinct film IDs) available in the inventory across all stores.

SELECT 
    COUNT(DISTINCT (film_id)) AS Total_Unique_Film
FROM
    inventory;
    
-- 4) Write an SQL query to retrieve the addresses and their corresponding postal codes for addresses located in the district "California."

SELECT 
    address, postal_code
FROM
    address
WHERE
    district = 'California';

-- 5) Write an SQL query to retrieve the addresses and their corresponding phone numbers for addresses with postal codes greater than or equal to 500

SELECT 
    address, phone
FROM
    address
WHERE
    postal_code >= 500;    