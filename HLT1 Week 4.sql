drop table customers;

create table customers (
	customer_id smallint unsigned,
    first_name varchar(30),
    last_name varchar(30),
    phone_number varchar(30),
    number_of_complaints int,
	constraint pk_customers primary key (customer_id)
);

select *
from customers;

insert into customers
	(customer_id, first_name, last_name, phone_number, number_of_complaints)
values
(1, "James","Cordon", "+447658930541", 2),
(2, "Carina","Travis", "+44734890247", 1),
(3, "Vanessa","Charples", "+447236489534", 0),
(4, "Julian","Valenzuela", "+447658345541", 1),
(5, "Connie","Dawson", "+447234980654", 2),
(6, "Caidne","Monroe", "+447123678905", 0),
(7, "Atticus","Christie", "+447769045678", 3),
(8, "Macy","Hutchinson", "+447658967591", 1),
(9, "Cora","Salazar", "+447658930761", 3),
(10, "Kaison","Walls", "+447658956431", 0);

select * 
from customers;

update customers
set phone_number = "+447209867543",
number_of_complaints = 1
where customer_id = 10;

select *
from customers; 

delete from customers
where customer_id = 7; 

select *
from customers; 

create table sales(
	customer_id smallint unsigned,
    purchase_number int,
    date_of_purchase date,
    item_code varchar(10),
    constraint pk_purchase_number primary key (customer_id, purchase_number),
    constraint fk_pur_number_customer_id foreign key (customer_id)
    references customers (customer_id)
);

insert into sales ( customer_id, purchase_number, date_of_purchase, item_code)
values (1, 2, "2017-06-17", "A1");

select * 
from sales;
    
    
    
	
        
		

