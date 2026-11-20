-- 1. all execute data from orders --


/*SELECT *
FROM orders*/

--2. Retriving each customer's name ,country , score --

/* SELECT 
first_name,
country,
score
FROM customers */


--- Using Where 3. Retriving customer with score not equal to zero --

/* SELECT *
FROM customers
WHERE score !=0 */

--- Retrieve customers fropm Germany ---

/* SELECT *
FROM customers
WHERE country = 'Germany'  */


-- Retrieve all customers and sort the results by the lowest score first.  Using ORDER BY --- 

/* SELECT *
FROM customers
ORDER BY score desc */


-- Retrieve all customers and sort the results by the country and then by the highest score --

/* SELECT *
FROM customers
ORDER BY country asc ,
score desc */

--------------                  Group By         --------------------

-- 1) Retrieve all customers and sort the results by the country and then by the highest score --

/* SELECT 
country,
first_name,
sum(score) as Total_score

FROM customers 
GROUP BY country, first_name */

---- 2) Find the total score and total number of customers for each country ----
/*SELECT 
country,
sum(score) as Total_score,
count(id) as Total_number

FROM customers
GROUP by country*/

----------------- HAVING-----------------------
/*Find the average score for each country

considering only customers with a score not equal to 0

And return only those countries with an average score greater than 430*/

/* SELECT 
country,
avg(score) as Average_score
FROM customers
Where score !=0
group by country
Having avg(score) > 430 */

---------------     TOP ---------------------

--- Restricts the number of rows----

/* SELECT top 3*
FROM customers */

--Retrive the top 3 hihest customer in the table--

/* SELECT top 3* 
fROM customers
ORDER BY score desc */

--- Retrive the bottom 2 score in table ---

SELECT TOP 2*
FROM customers
ORDER BY score asc
