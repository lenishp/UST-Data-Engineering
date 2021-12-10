select sakila;

-- Q1
select c.first_name, c.last_name, a.address, ct.city
from customer c
	inner join address a 
    on c.address_id  = a.address_id
    inner join city ct
    on a.city_id = ct.city_id
where a.district = "California";

-- Q2 
select f.title
from film f 
	inner join film_actor fa 
    on f.film_id = fa.film_id 
    inner join actor a
    on fa.actor_id = a.actor_id 
where a.first_name = "JOHN";select address2
from address;

-- Q3
select a1.address, a2.address ,ct.city 
from address a1
	inner join address a2 
    on a1.city_id = a2.city_id
    inner join city ct 
    on a1.city_id = ct.city_id
where(a1.address < a2.address);

-- Below are the practice queries to come up with the solution for Q3

select a.address, ct.city 
from address a 
	inner join city ct
    on a.city_id = ct.city_id
    inner join country co
    on ct.country_id = co.country_id; 

select a1.address, a2.address ,ct.city 
from address a1
	inner join city ct 
    on a1.city_id = ct.city_id
	inner join address a2
    on a1.city_id = a2.city_id
    inner join country co
    on ct.country_id = co.country_id 
where(a1.address <> a2.address);	


