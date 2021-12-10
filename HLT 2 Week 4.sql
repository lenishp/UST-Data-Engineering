use sakila;

select actor_id, first_name, last_name 
from actor
order by last_name, first_name; 

select actor_id, first_name, last_name 
from actor
order by first_name;

select actor_id, first_name, last_name
from actor
where last_name = "WILLIAMS" or last_name="DAVIS"
order by actor_id;

select c.customer_id, c.first_name, c.last_name
from customer c
	inner join rental r 
    on c.customer_id = r.customer_id
where date(r.rental_date)= "2005-07-05"
order by c.customer_id;

select c.email, r.return_date
from customer c 
	inner join rental r 
    on c.customer_id = r.customer_id
where date(r.rental_date)="2005-06-14"
order by date(r.return_date) desc;

