--1. how many actors are there with the last name ' wahlberg'
--ANSWER:2
select COUNT(*)
from actor 
where last_name = ' wahlberg';

--2.How many payments were made between $3.99 and $5.99                                                                                                                                                                           
-- answer:5607
select count(*)
from payment
where  amount between 3.99 and 5.99;

--3.what films have exactly 7 copies? ( serch in inventory)
--answer:116 is  the total amount
select film_id ,count(*) 
from inventory
group by film_id having count(*)=7;

--4 how many customers have the last-name william
--Anwer:2
select count(*)
from customer
where  first_name= 'willie';
--
--5. what store employee (get the id) sold he most rental(use the rental table)
-- store employee staff_id  1
select staff_id, count(inventory_id) 
from rental group by staff_id;


--6 how many different district names are there?
--answer:2
select count(*) 
from address group by district ;



--7 what film has the most actors actors in it ( use fulm_actor table and get film_id)
--answer:film_id: 508
select film_id, count(actor_id) as num 
from  film_ actor
group by film_id order by num desc limi1;


-- 8 . from store_id 1 how many customers have a last name with 'es' ? [use customer table)
--answer: 13
select  count (last_name)
from customer where last_name like '%es' and store_id=1;


-- 9 how many payment amounts(4.99,5.99) had a number of rentals above 250 for
-- customers with ids between 380 and 430?( use group by and having>250)
--ANSWER=3
select AMOUNT, COUNT(AMOUNT) 
from PAYMENT
where Customer_id between 380 and 430 group by amount having count(amount >250) ;


--10. within the film table , how many rating categories are there? and what  rating has the most movies total?
--I have three tables:

    CREATE TABLE Movie
    (
        movieId INTEGER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
        title VARCHAR(255) NOT NULL,
        moviePath VARCHAR(500) NOT NULL
    );

    CREATE TABLE Rating
    (
        rid INTEGER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
        mid INTEGER FOREIGN KEY REFERENCES Movie(movieId) ON DELETE CASCADE, 
        uid INTEGER FOREIGN KEY REFERENCES User(id) ON DELETE CASCADE,
        rating INTEGER NOT NULL, 
    );

   CREATE TABLE Genre(
       id INTEGER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
       movieId INTEGER NOT NULL FOREIGN KEY REFERENCES Movie(movieId) ON DELETE CASCADE,
       genre VARCHAR(255) NOT NULL
   );













  



