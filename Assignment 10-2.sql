use sakila;
show tables;

select * from customer;
select * from actor;
select * from address;

select * from country;
select * from city;

/*Assignment 10.2 problem-4*/
select first_name,last_name,city
from customer
	 inner join address a 
		on a.address_id=customer.address_id
	 inner join city c
		on c.city_id=a.city_id
        
	where city = "canada"
    order by last_name;
   
/*Assignment 10.2 problem-5*/   
select count(customer_id)
from customer
	 inner join address a 
		on a.address_id=customer.address_id
	 inner join city c
		on c.city_id=a.city_id
        
	where city = "Brazil";

/*Assignment 10.2 problem-6*/
select * from city;
select * from customer;
select * from address;

create table city_1 as
select (city_id), country_id from city
group by city_id;


create table address1 as
select (city_id), address_id from address
group by city_id
order by address_id;

create table address2 as
select address_id, country_id from city_1
inner join address1 a1
on city_1.city_id=a1.city_id;

select * from address2;
select * from customer;

create table Country_customer as
select count(customer_id),country_id from customer
inner join address2 a2
on customer.address_id=a2.address_id
group by country_id

having count(customer_id)>20
order by count(customer_id);

select * from country_customer as c_c;
select * from country;

select * from country_customer
inner join country c 
on country_customer.country_id=c.country_id;










    