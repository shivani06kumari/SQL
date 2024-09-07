use mavenmovies;
-- question1: identify the primary keys and foreign keys in mavenmovies db. discuss the differences
SELECT TABLE_NAME, COLUMN_NAME
FROM information_schema.KEY_COLUMN_USAGE
WHERE CONSTRAINT_NAME = 'PRIMARY'
  AND TABLE_SCHEMA = 'mavenmovies';

SELECT 
    CONSTRAINT_NAME,
    TABLE_NAME,
    COLUMN_NAME,
    REFERENCED_TABLE_NAME,
    REFERENCED_COLUMN_NAME
FROM
    information_schema.KEY_COLUMN_USAGE
WHERE
    CONSTRAINT_NAME != 'PRIMARY'
        AND REFERENCED_TABLE_NAME IS NOT NULL
        AND TABLE_SCHEMA = 'mavenmovies';
-- Primary Key: Uniquely identifies records within a table.It can hold unique and Not null Values
-- Foreign Key: Establishes relationships between tables by referencing the primary key of another table.It can contin null values a
-- question2: list all details of actor
select * from actor;
-- question3: list all customer information from db
select * from customer;
-- question 4: list different countries
select * from country;
select country from country;
-- question 5: display all active customer
select * from customer where active =1;
-- question 6: list of all rental ids for customer with id 1
select * from rental;
select rental_id from rental where customer_id =1;
-- question 7:display all the films whose rental duration is greater than 5
select * from film where rental_duration >5;
-- question8:list the total number of films whose replacement cost is greater than $15 and less than $20
select * from film where replacement_cost > 15 and replacement_cost < 20 ;
select count(*) from film where replacement_cost > 15 and replacement_cost < 20 ;
-- question 9: find the number of films whose rental rate is less than $1
select count(*) number_of_film from film where rental_rate < 1;
-- question 10: display the count of unique first names of actor
select count(distinct first_name) from actor;
-- question 11: display the first 10 records from the customer table
select * from customer limit 10;
-- question 12:display the first 3 records from the customer table whose name start with b
select first_name from customer where first_name like "b%" limit 3 ;
-- question 13:display the names of the first 5 movies which are rated as 'g'
select title ,rating from film where rating = "g" limit 5;
-- question 14:find all customers whose first name start with "a"
select * from customer where first_name like "a%";
-- question 15:find all customers whose first name end with "a"
select * from customer where first_name like "%a";
-- question 16:display the list of first 4 cities which start and end with'a'
select city from city where city like "%a%"limit 4;
-- question 17:find all customers whose first name have "ni" in any poisition
select * from customer where first_name like "%ni%";
-- question 18:find all customer whose first name have "r" in the second poisition
select * from customer where first_name like "_r%";
-- question 19:find all customer whose first name start  with "a" and are at least 5 character in length
select * from customer where first_name  like "a%" and LENGTH (first_name) >=5;
-- question 20:find all customer whose first name start  with "a" and end with "o"
select * from customer where first_name like "a%o";
-- question 21:get the films with pg and pg-13 rating using in operator
select * from film where rating in ("pg", "pg-13");
-- question 22:get the films with length between 50 and 100 using between operator
select * from film where length between 50 and 100;
-- question 23:get the top 50 actor using limit operator
select * from actor order by actor_id  limit 50;
-- question 24:get the distinct film ids from inventory table
select distinct film_id from inventory;

