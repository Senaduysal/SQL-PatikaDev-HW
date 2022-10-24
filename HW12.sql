-- 1)film tablosunda film uzunluğu length sütununda gösterilmektedir. Uzunluğu ortalama film uzunluğundan fazla kaç tane film vardır?
SELECT title, length
FROM film
WHERE length > 
(
    SELECT AVG(length)
    FROM film
);

--2)film tablosunda en yüksek rental_rate değerine sahip kaç tane film vardır?
SELECT title, rental_rate
FROM film
WHERE rental_rate = ANY
(
    SELECT MAX(rental_rate)
    FROM film
);
--3)film tablosunda en düşük rental_rate ve en düşün replacement_cost değerlerine sahip filmleri sıralayınız.
SELECT title, rental_rate, replacement_cost 
FROM film
WHERE rental_rate >
( 
        SELECT MIN(rental_rate)
        FROM film
)
AND replacement_cost > 
(
    SELECT MIN(replacement_cost)
    FROM film
);
--4)payment tablosunda en fazla sayıda alışveriş yapan müşterileri(customer) sıralayınız.

SELECT customer.first_name, customer.last_name, payment.rental_id
FROM payment
INNER JOIN customer ON customer.customer_id = payment.customer_id
WHERE payment.rental_id =
(
    SELECT MAX(rental_id) FROM payment
);
