-- TASK 1 : Create a view definition that can be used by the following 
-- query to generate the given results: 

use sakila; 

create view film_category_actor
as
select f.title,
 c.name category_name,
 a.first_name,
 a.last_name
from film f
 inner join film_category fc
 on f.film_id = fc.film_id
 inner join category c
 on fc.category_id = c.category_id
 inner join film_actor fa
 on fa.film_id = f.film_id
 inner join actor a
 on fa.actor_id = a.actor_id;

-- Now testing the view 

select title, category_name, first_name, last_name
from film_category_actor
where last_name = 'FAWCETT';


-- TASK 2: The film rental company manager would like to have a report 
-- that includes the name of every country, along with the total payments 
-- for all customers who live in each country. Generate a view definition 
-- that queries the country table and uses a scalar subquery to calculate 
-- a value for a column named tot_payments. 

create view country_payments
as
select c.country,
 (select sum(p.amount)
 from city ct
 inner join address a
 on ct.city_id = a.city_id
 inner join customer cst
 on a.address_id = cst.address_id
 inner join payment p
 on cst.customer_id = p.customer_id
 where ct.country_id = c.country_id
 ) total_payments
from country c; 
