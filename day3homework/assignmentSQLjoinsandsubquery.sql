

  --1. list all customers who live in texas

SELECT customers.name, customers.address, customers.phone
FROM customers
JOIN states ON customers.state_id = states.id
WHERE states.name = 'Texas';
    

--2 Get all payments  above $6.99  with thev customer's full names
-- answer:7
select first_name,last_name
from customer 
where customer_id in  ( 
select distinct customer_id 
from payment 
where amount > 6.99
);

--3 .show all customers names who have made payments over $175 (use subsqueries)
--query for data that shows customers who  paid 
--an amount  that was greater than $175
--anser:123
select customer_id , amount
from payment
where amount >175;

--4 list all customers that live in nepal (  use the city table)
--write a sql query to list all customers that live in nepal uses the city table
SELECT customer_id, customer_name, city_name
FROM city
WHERE country_name = 'Nepal';



--5 which staff member had the most transactions
     answer ; staff_id 1
     
     --write a sql query to find which member had the most transactions
SELECT customer_id, COUNT(DISTINCT ord_no), 
MAX(purch_amt) 
FROM orders 
GROUP BY customer_id 
ORDER BY 2 DESC;





--6. how many movies of each rating are there?

SELECT rating, COUNT (*) AS movie_count
FROM film
GROUP BY rating;




--7.show all customers who have made a single payment above $6.99 (use subquerie)
--write a sql query to find the customers who have made a single payment above $6.99 used subqueries
SELECT first_name,last_name
FROM customer
WHERE amount > 6.99
AND customer_id IN (
    -- Subquery to find the customers who have made only one payment
    SELECT customer_id
    FROM payment
    GROUP BY customer_id
    HAVING COUNT(*) = 1






















/















                   




