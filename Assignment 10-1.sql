use sakila;
show tables;
/*Assignment 10.1- problem 1*/
select country from country
where country like"B%";

/*Assignment 10.1- problem 2*/
select * from actor;

select first_name from actor
where last_name="berry"
order by first_name;

/*Assignment 10.1- problem 3*/
select * from film;

select title,length from film
where length>=184
order by length;