
-- 1) Find the film id , Film Titles and the sum of their replacement cost from film table ,grouping them by film id and film title and Ordering by Total Cost.
select * from film;

SELECT 
    film_id, title, SUM(replacement_cost) AS total_cost
FROM
    film
GROUP BY film_id , title
ORDER BY total_cost DESC;

-- 2) Find the category id and  the Average Rental Duration for Each Film Category from film_category and  film table, grouping and Ordering by Category ID.
select * from category;
select * from film_category;
select * from film;

SELECT 
    fc.category_id, AVG(f.rental_duration) AS Avg_Rental
FROM
    film f
        INNER JOIN
    film_category fc ON f.film_id = fc.film_id
        INNER JOIN
    category c ON fc.category_id = c.category_id
GROUP BY fc.category_id
ORDER BY fc.category_id DESC;
    
-- 3) Find the title and length from the film table ordering by the length in descending order and get the top 5 films.
select title, length from film
order by length desc
limit 5;

-- 4) Find the customer id and  the total amount made by each customer from payment table grouping by customer id and display only those with total payments exceeding $100.
select * from customer;
select * from payment;

select c.customer_id, sum(p.amount) as Total_Payment
from customer C
INNER JOIN payment P ON C.customer_id=P.customer_id
group by customer_id
having Total_Payment >= 100
order by customer_id ;

-- 5) Find the list of store id and  the total sales amount from the store , staff and payment table , grouping them by store id  display only those stores with total sales exceeding $2000.
select * from staff;
select * from payment;

select s.store_id, sum(p.amount) as Total_Sales_Amount
from staff s
INNER JOIN payment P ON s.staff_id=P.staff_id
group by s.store_id
having Total_Sales_Amount > 2000
order by s.store_id;