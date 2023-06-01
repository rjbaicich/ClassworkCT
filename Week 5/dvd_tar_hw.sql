--List all customers who live in Texas (use Joins): 
SELECT customers.customerName
FROM customers
JOIN address ON customers.addressId = address.addressId
JOIN city ON address.cityId = city.cityId
JOIN state ON city.stateId = state.stateId
WHERE state.stateName = 'Texas';
    
--Get all payments above $6.99 with the customer's full name
   
SELECT CONCAT(customers.firstName, ' ', customers.lastName) AS customerFullName, payments.amount
FROM customers
JOIN payments ON customers.customerId = payments.customerId
WHERE payments.amount > 6.99;

--Show all customer names that made payments over $175 (use a subquery)

SELECT CONCAT(customers.firstName, ' ', customers.lastName) AS customerFullName
FROM customers
WHERE customers.customerId IN (SELECT payments.customerId FROM payments WHERE payments.amount > 175);

--List all customers that live in Nepal (use the city table)

SELECT customers.customerName
FROM customers
JOIN address ON customers.addressId = address.addressId
JOIN city ON address.cityId = city.cityId
JOIN country ON city.countryId = country.countryId
WHERE country.countryName = 'Nepal';

--Which staff member had the most transactions?

SELECT CONCAT(staff.firstName, ' ', staff.lastName) AS staffMember, COUNT(*) AS transactionCount
FROM staff
JOIN payments ON staff.staffId = payments.staffId
GROUP BY staff.staffId
ORDER BY transactionCount DESC
LIMIT 1;
    
--What film had the most actors in it?

SELECT films.title, COUNT(*) AS actorCount
FROM films
JOIN film_actor ON films.filmId = film_actor.filmId
GROUP BY films.filmId
ORDER BY actorCount DESC
LIMIT 1;

--Show all customers who have made a single payment above $6.99 (use subqueries)

SELECT CONCAT(customers.firstName, ' ', customers.lastName) AS customerFullName
FROM customers
JOIN payments ON customers.customerId = payments.customerId
WHERE payments.amount > 6.99
GROUP BY customers.customerId
HAVING COUNT(*) = 1;

--Which category is most prevalent in the films?

SELECT categories.categoryName, COUNT(*) AS filmCount
FROM categories
JOIN film_category ON categories.categoryId = film_category.categoryId
GROUP BY categories.categoryId
ORDER BY filmCount DESC
LIMIT 1;