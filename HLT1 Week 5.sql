use sakila;


select payment_id 
from payment 
where customer_id <> 5 and (amount > 8 or date(payment_date) = "2005-08-23");

select payment_id 
from payment 
where customer_id = 5 and (amount > 6 or date(payment_date) = "2005-06-19");

select * 
from payment 
where amount in ("1.98", "7.98", "9.98")
order by amount;

select customer_id, last_name, first_name 
from customer 
where last_name like "_A%w%";


